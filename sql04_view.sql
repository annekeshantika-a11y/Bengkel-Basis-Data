-- ============================================================
-- 5.2 VIEW
-- ============================================================
CREATE VIEW v_riwayat_servis AS
SELECT
    t.id_transaksi,
    p.nama_pelanggan,
    p.no_hp AS hp_pelanggan,
    k.no_polisi,
    k.merek,
    k.tipe,
    m.nama_mekanik,
    t.tanggal_masuk,
    t.tanggal_selesai,
    t.keluhan,
    t.status_servis,
    fn_total_tagihan(t.id_transaksi) AS total_tagihan,
    i.status_invoice
FROM transaksi_servis t
JOIN kendaraan k ON t.id_kendaraan = k.id_kendaraan
JOIN pelanggan p ON k.id_pelanggan = p.id_pelanggan
JOIN mekanik m   ON t.id_mekanik = m.id_mekanik
LEFT JOIN invoice i ON t.id_transaksi = i.id_transaksi;


CREATE VIEW v_stok_sparepart AS
SELECT
    s.id_sparepart,
    s.nama_sparepart,
    s.merek,
    s.satuan,
    s.stok,
    s.stok_minimum,
    sup.nama_supplier,
    sup.no_hp AS hp_supplier,
    CASE
        WHEN s.stok = 0               THEN 'Habis'
        WHEN s.stok <= s.stok_minimum THEN 'Stok Rendah'
        ELSE 'Stok Aman'
    END AS status_stok
FROM sparepart s
JOIN supplier sup ON s.id_supplier = sup.id_supplier;