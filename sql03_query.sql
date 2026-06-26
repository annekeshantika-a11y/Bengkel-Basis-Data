-- ============================================================
-- Isi : Query SELECT (1-10) + VIEW
-- ============================================================
USE bengkel_kendaraan;
-- ============================================================
-- 5.1 QUERY SELECT
-- ============================================================
-- 01: Daftar seluruh pelanggan
SELECT id_pelanggan, nama_pelanggan, no_hp, email, tgl_daftar
FROM pelanggan
ORDER BY tgl_daftar DESC;
-- 02: Sparepart dengan stok di bawah batas minimum
SELECT id_sparepart, nama_sparepart, merek, stok, stok_minimum
FROM sparepart
WHERE stok <= stok_minimum
ORDER BY stok ASC;
-- 03: Transaksi servis yang sedang diproses
SELECT id_transaksi, id_kendaraan, id_mekanik, tanggal_masuk, keluhan
FROM transaksi_servis
WHERE status_servis IN ('menunggu', 'diproses')
ORDER BY tanggal_masuk ASC;
-- 04: Riwayat servis kendaraan beserta data pelanggan dan mekanik (JOIN 4 Tabel)
SELECT
    t.id_transaksi,
    p.nama_pelanggan,
    k.no_polisi,
    k.merek,
    k.tipe,
    m.nama_mekanik,
    t.tanggal_masuk,
    t.tanggal_selesai,
    t.keluhan,
    t.status_servis
FROM transaksi_servis t
JOIN kendaraan k ON t.id_kendaraan = k.id_kendaraan
JOIN pelanggan p ON k.id_pelanggan = p.id_pelanggan
JOIN mekanik m   ON t.id_mekanik = m.id_mekanik
ORDER BY t.tanggal_masuk DESC;
-- 05: Detail invoice lengkap beserta data kendaraan dan pembayaran (JOIN 5 Tabel)
SELECT
    i.id_invoice,
    k.no_polisi,
    p.nama_pelanggan,
    i.tanggal_invoice,
    i.total_jasa,
    i.total_sparepart,
    fn_total_tagihan(i.id_transaksi) AS total_tagihan,
    i.status_invoice,
    COALESCE(SUM(pb.jumlah_bayar), 0) AS total_sudah_dibayar,
    (fn_total_tagihan(i.id_transaksi) - COALESCE(SUM(pb.jumlah_bayar), 0)) AS sisa_tagihan
FROM invoice i
JOIN transaksi_servis t ON i.id_transaksi = t.id_transaksi
JOIN kendaraan k ON t.id_kendaraan = k.id_kendaraan
JOIN pelanggan p ON k.id_pelanggan = p.id_pelanggan
LEFT JOIN pembayaran pb ON i.id_invoice = pb.id_invoice
GROUP BY i.id_invoice, i.id_transaksi, k.no_polisi, p.nama_pelanggan,
         i.tanggal_invoice, i.total_jasa, i.total_sparepart,
         i.status_invoice
ORDER BY i.tanggal_invoice DESC;
-- 06: Detail sparepart yang digunakan pada setiap transaksi servis (JOIN 4 Tabel)
SELECT
    t.id_transaksi,
    k.no_polisi,
    s.nama_sparepart,
    s.merek,
    ds.jumlah,
    ds.harga_satuan,
    ds.subtotal_sparepart
FROM detail_sparepart ds
JOIN transaksi_servis t ON ds.id_transaksi = t.id_transaksi
JOIN kendaraan k ON t.id_kendaraan = k.id_kendaraan
JOIN sparepart s ON ds.id_sparepart = s.id_sparepart
ORDER BY t.id_transaksi, s.nama_sparepart;
-- 07: Daftar jasa servis beserta kategori dan frekuensi penggunaan (JOIN 3 Tabel)
SELECT
    ks.nama_kategori,
    js.nama_jasa,
    js.biaya_jasa,
    js.estimasi_menit,
    COUNT(dj.id_detail_jasa) AS frekuensi_penggunaan
FROM jasa_servis js
JOIN kategori_servis ks ON js.id_kategori = ks.id_kategori
LEFT JOIN detail_jasa_servis dj ON js.id_jasa = dj.id_jasa
GROUP BY ks.nama_kategori, js.nama_jasa, js.biaya_jasa, js.estimasi_menit
ORDER BY frekuensi_penggunaan DESC;
-- 08: Pelanggan dengan jumlah transaksi servis terbanyak (subquery)
SELECT
    p.nama_pelanggan, p.no_hp,
    (
        SELECT COUNT(*)
        FROM kendaraan k
        JOIN transaksi_servis t ON k.id_kendaraan = t.id_kendaraan
        WHERE k.id_pelanggan = p.id_pelanggan
    ) AS total_transaksi
FROM pelanggan p
WHERE (
        SELECT COUNT(*)
        FROM kendaraan k
        JOIN transaksi_servis t ON k.id_kendaraan = t.id_kendaraan
        WHERE k.id_pelanggan = p.id_pelanggan
      ) > 0
ORDER BY total_transaksi DESC;
-- 09: Rekap pendapatan bengkel per bulan menggunakan CTE
WITH rekap_bulanan AS (
    SELECT
        YEAR(tanggal_invoice)  AS tahun,
        MONTH(tanggal_invoice) AS bulan,
        COUNT(*)               AS jumlah_invoice,
        SUM(total_jasa)        AS total_pendapatan_jasa,
        SUM(total_sparepart)   AS total_pendapatan_sp,
        SUM(fn_total_tagihan(id_transaksi))     AS total_pendapatan
    FROM invoice
    WHERE status_invoice = 'lunas'
    GROUP BY YEAR(tanggal_invoice), MONTH(tanggal_invoice)
)
SELECT
    tahun,
    CASE bulan
        WHEN 1  THEN 'Januari'   WHEN 2  THEN 'Februari'
        WHEN 3  THEN 'Maret'     WHEN 4  THEN 'April'
        WHEN 5  THEN 'Mei'       WHEN 6  THEN 'Juni'
        WHEN 7  THEN 'Juli'      WHEN 8  THEN 'Agustus'
        WHEN 9  THEN 'September' WHEN 10 THEN 'Oktober'
        WHEN 11 THEN 'November'  WHEN 12 THEN 'Desember'
    END AS nama_bulan,
    jumlah_invoice,
    total_pendapatan_jasa,
    total_pendapatan_sp,
    total_pendapatan
FROM rekap_bulanan
ORDER BY tahun, bulan;
-- 10: Mekanik dengan total pendapatan > 500000 (GROUP BY + HAVING)
SELECT
    m.nama_mekanik,
    m.spesialisasi,
    COUNT(t.id_transaksi)     AS total_transaksi,
    SUM(i.total_jasa)         AS total_pendapatan_jasa,
    SUM(i.total_sparepart)    AS total_pendapatan_sp,
    SUM(fn_total_tagihan(i.id_transaksi))      AS total_pendapatan
FROM mekanik m
JOIN transaksi_servis t ON m.id_mekanik = t.id_mekanik
JOIN invoice i          ON t.id_transaksi = i.id_transaksi
WHERE t.status_servis = 'selesai'
GROUP BY m.id_mekanik, m.nama_mekanik, m.spesialisasi
HAVING SUM(fn_total_tagihan(i.id_transaksi)) > 500000
ORDER BY total_pendapatan DESC;