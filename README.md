Project ini terdiri dari 12 tabel utama, yaitu:

1. `pelanggan`
2. `kendaraan`
3. `mekanik`
4. `kategori_servis`
5. `jasa_servis`
6. `supplier`
7. `sparepart`
8. `transaksi_servis`
9. `detail_jasa_servis`
10. `detail_sparepart`
11. `invoice`
12. `pembayaran`

## Tujuan Project

Tujuan dari project Sistem Basis Data Bengkel Kendaraan ini adalah:

1. Merancang sistem basis data relasional untuk mengelola data operasional bengkel kendaraan.
2. Mengidentifikasi entitas, atribut, relasi, dan kardinalitas yang sesuai dengan proses bisnis bengkel.
3. Membuat Entity Relationship Diagram (ERD) menggunakan notasi Crow’s Foot.
4. Melakukan pemetaan ERD ke dalam skema relasional.
5. Melakukan normalisasi data hingga bentuk normal ketiga atau 3NF.
6. Mengimplementasikan database menggunakan perintah SQL DDL dan DML.
7. Membuat query pengujian menggunakan SELECT, JOIN, subquery, CTE, agregasi, GROUP BY, dan HAVING.
8. Membuat objek database lanjutan berupa view, stored procedure, trigger, dan function.

## Manfaat Project

Project ini memiliki beberapa manfaat, antara lain:

### Bagi Bengkel Kendaraan

- Membantu pengelolaan data pelanggan, kendaraan, mekanik, jasa servis, sparepart, transaksi, invoice, dan pembayaran secara terintegrasi.
- Mempermudah pencatatan transaksi servis kendaraan.
- Membantu pemantauan stok sparepart.
- Mempermudah penyusunan laporan transaksi dan pendapatan bengkel.

### Bagi Pengguna Sistem

- Mempermudah pencarian data pelanggan dan kendaraan.
- Mempermudah pengecekan riwayat servis kendaraan.
- Mengurangi risiko kesalahan pencatatan dan perhitungan biaya servis.

### Bagi Mahasiswa

- Melatih pemahaman mengenai perancangan basis data relasional.
- Menerapkan konsep ERD, skema relasional, normalisasi, dan SQL.
- Melatih kemampuan membuat query, view, stored procedure, trigger, dan function.
- Memberikan pengalaman dalam merancang database berdasarkan studi kasus nyata.

## Anggota Tim

Project ini dikerjakan oleh **Kelompok E**.

| No | Nama | NIM |
|---|---|---|
| 1 | Unaisyah Moulia W. | K1D024052 |
| 2 | Anneke Alya Shantika | K1D024056 |
| 3 | Riani Kurnia Agustina | K1D024059 |
| 4 | Shadrina Izzati | K1D024066 |
| 5 | Kezya Aurell Manuela S | K1D024071 |

## Ruang Lingkup Sistem

Ruang lingkup Sistem Bengkel Kendaraan difokuskan pada proses administrasi dan transaksi layanan bengkel. Sistem ini tidak membahas aplikasi mobile pelanggan, integrasi pembayaran digital secara langsung, maupun sistem akuntansi lengkap.

Ruang lingkup sistem meliputi:

1. Pengelolaan data pelanggan.
2. Pengelolaan data kendaraan pelanggan.
3. Pengelolaan data mekanik.
4. Pengelolaan data kategori servis.
5. Pengelolaan data jasa servis.
6. Pengelolaan data supplier sparepart.
7. Pengelolaan data sparepart.
8. Pencatatan transaksi servis kendaraan.
9. Pencatatan detail jasa servis pada setiap transaksi.
10. Pencatatan sparepart yang digunakan dalam transaksi servis.
11. Pembuatan invoice servis.
12. Pencatatan pembayaran pelanggan.
13. Penyimpanan riwayat servis kendaraan.
14. Penyusunan laporan transaksi dan penggunaan sparepart.

## Aktor/Pengguna Sistem

Sistem Bengkel Kendaraan melibatkan beberapa aktor atau pengguna, yaitu:

| No | Aktor/Pengguna | Peran dalam Sistem |
|---|---|---|
| 1 | Admin/Kasir | Mengelola data pelanggan, kendaraan, mekanik, jasa servis, sparepart, transaksi servis, invoice, dan pembayaran. |
| 2 | Mekanik | Melakukan pemeriksaan kendaraan, menangani servis, menentukan jasa servis yang dilakukan, dan melaporkan sparepart yang digunakan. |
| 3 | Pemilik Bengkel | Melihat laporan transaksi, pendapatan, stok sparepart, serta kinerja pelayanan bengkel. |
| 4 | Pelanggan | Memberikan data diri dan kendaraan, menerima layanan servis, menerima invoice, dan melakukan pembayaran. |

## Kebutuhan Fungsional Sistem

Kebutuhan fungsional dari Sistem Bengkel Kendaraan meliputi:

1. Sistem dapat menyimpan data pelanggan.
2. Sistem dapat menyimpan data kendaraan.
3. Sistem dapat menghubungkan pelanggan dengan kendaraan.
4. Sistem dapat menyimpan data mekanik.
5. Sistem dapat menyimpan data kategori servis.
6. Sistem dapat menyimpan data jasa servis.
7. Sistem dapat menghubungkan kategori servis dengan jasa servis.
8. Sistem dapat menyimpan dan mengelola data supplier.
9. Sistem dapat menyimpan dan memperbarui data sparepart.
10. Sistem dapat menghubungkan supplier dengan sparepart.
11. Sistem dapat mencatat transaksi servis.
12. Sistem dapat mencatat detail jasa servis pada transaksi.
13. Sistem dapat mencatat penggunaan sparepart pada transaksi.
14. Sistem dapat memperbarui stok sparepart secara otomatis.
15. Sistem dapat menghitung total biaya servis secara otomatis.
16. Sistem dapat membuat invoice.
17. Sistem dapat mencatat pembayaran.
18. Sistem dapat mengelola status pembayaran invoice.
19. Sistem dapat menampilkan riwayat servis kendaraan.
20. Sistem dapat menghasilkan laporan bengkel.

## Aturan Bisnis

Aturan bisnis dalam Sistem Bengkel Kendaraan adalah sebagai berikut:

1. Setiap pelanggan harus memiliki ID pelanggan yang unik.
2. Satu pelanggan dapat memiliki lebih dari satu kendaraan.
3. Setiap kendaraan hanya dimiliki oleh satu pelanggan.
4. Nomor polisi kendaraan tidak boleh sama untuk kendaraan yang berbeda.
5. Setiap kendaraan harus terdaftar atas nama pelanggan yang ada dalam sistem.
6. Satu kendaraan dapat memiliki banyak riwayat transaksi servis.
7. Satu transaksi servis hanya berlaku untuk satu kendaraan.
8. Setiap mekanik harus memiliki ID mekanik yang unik.
9. Satu mekanik dapat menangani banyak transaksi servis.
10. Satu transaksi servis harus ditangani oleh tepat satu mekanik.
11. Satu kategori servis dapat mencakup lebih dari satu jenis jasa servis.
12. Setiap jasa servis hanya termasuk dalam satu kategori servis.
13. Setiap sparepart harus berasal dari satu supplier yang terdaftar.
14. Satu supplier dapat memasok lebih dari satu sparepart.
15. Setiap sparepart harus memiliki kode sparepart yang unik.
16. Setiap sparepart harus memiliki data stok dan harga jual.
17. Jumlah stok sparepart tidak boleh bernilai negatif.
18. Stok sparepart akan berkurang secara otomatis ketika digunakan dalam transaksi servis.
19. Sparepart hanya dapat digunakan jika stok tersedia.
20. Satu transaksi servis dapat memiliki lebih dari satu detail jasa servis.
21. Satu jasa servis dapat digunakan pada banyak transaksi servis.
22. Setiap jasa servis harus memiliki biaya jasa yang tercatat.
23. Satu transaksi servis dapat menggunakan lebih dari satu sparepart.
24. Satu sparepart dapat digunakan pada banyak transaksi servis.
25. Harga sparepart pada detail transaksi mengikuti harga pada saat transaksi dilakukan.
26. Setiap transaksi servis yang telah selesai harus menghasilkan tepat satu invoice.
27. Setiap invoice hanya merujuk pada satu transaksi servis.
28. Setiap invoice harus memiliki nomor invoice yang unik.
29. Total tagihan pada invoice dihitung dari total biaya jasa ditambah total harga sparepart.
30. Data transaksi servis yang telah memiliki invoice tidak dapat dihapus.
31. Pembayaran hanya dapat dilakukan jika invoice sudah dibuat.
32. Satu invoice dapat dibayar melalui satu atau beberapa kali transaksi pembayaran.
33. Setiap pembayaran harus terkait dengan tepat satu invoice.
34. Jumlah pembayaran tidak boleh melebihi total tagihan pada invoice.
35. Status pembayaran terdiri dari: Belum Dibayar, Dibayar Sebagian, dan Lunas.
36. Status servis terdiri dari: Menunggu, Diproses, Selesai, dan Dibatalkan.
37. Transaksi yang sudah selesai tetap disimpan sebagai riwayat servis kendaraan.
38. Sistem menyediakan laporan transaksi, pembayaran, dan penggunaan sparepart.

## Entity Relationship Diagram (ERD)

Entity Relationship Diagram (ERD) digunakan untuk menggambarkan hubungan antarentitas dalam Sistem Bengkel Kendaraan. ERD pada project ini menggunakan notasi Crow’s Foot karena notasi tersebut dapat menunjukkan hubungan antarentitas secara jelas, seperti hubungan satu-ke-banyak, satu-ke-satu, dan banyak-ke-banyak.

Entitas utama dalam ERD Sistem Bengkel Kendaraan terdiri dari:

1. Pelanggan
2. Kendaraan
3. Mekanik
4. Kategori Servis
5. Jasa Servis
6. Supplier
7. Sparepart
8. Transaksi Servis
9. Detail Jasa Servis
10. Detail Sparepart
11. Invoice
12. Pembayaran

Relasi utama dalam ERD adalah sebagai berikut:

- Satu pelanggan dapat memiliki banyak kendaraan.
- Satu kendaraan hanya dimiliki oleh satu pelanggan.
- Satu kendaraan dapat memiliki banyak transaksi servis.
- Satu transaksi servis hanya berlaku untuk satu kendaraan.
- Satu mekanik dapat menangani banyak transaksi servis.
- Satu transaksi servis ditangani oleh satu mekanik.
- Satu kategori servis dapat memiliki banyak jasa servis.
- Satu jasa servis hanya termasuk dalam satu kategori servis.
- Satu supplier dapat memasok banyak sparepart.
- Satu sparepart berasal dari satu supplier.
- Satu transaksi servis dapat memiliki banyak detail jasa servis.
- Satu jasa servis dapat digunakan dalam banyak transaksi servis.
- Satu transaksi servis dapat memiliki banyak detail sparepart.
- Satu sparepart dapat digunakan dalam banyak transaksi servis.
- Satu transaksi servis menghasilkan satu invoice.
- Satu invoice dapat memiliki satu atau beberapa pembayaran.

Gambar ERD Sistem Bengkel Kendaraan:

![ERD Sistem Bengkel Kendaraan](assets/erd-bengkel-kendaraan.png)

> Catatan: Simpan gambar ERD di folder `assets` dengan nama `erd-bengkel-kendaraan.png`.

## Skema Relasional

Skema relasional dari Sistem Bengkel Kendaraan adalah sebagai berikut:

### 1. Tabel pelanggan

​
pelanggan(
id_pelanggan,
nama_pelanggan,
no_hp,
email,
alamat,
tgl_daftar
)

### 2. Tabel kendaraan

​
kendaraan(
id_kendaraan,
id_pelanggan,
no_polisi,
merek,
tipe,
tahun,
warna,
jenis_transmisi,
no_rangka,
no_mesin
)

### 3. Tabel mekanik

​
mekanik(
id_mekanik,
nama_mekanik,
no_hp,
spesialisasi,
status_mekanik
)

### 4. Tabel kategori_servis

​
kategori_servis(
id_kategori,
nama_kategori,
deskripsi
)

### 5. Tabel jasa_servis

​
jasa_servis(
id_jasa,
id_kategori,
nama_jasa,
deskripsi,
biaya_jasa,
estimasi_menit
)

### 6. Tabel supplier

​
supplier(
id_supplier,
nama_supplier,
no_hp,
email,
alamat
)

### 7. Tabel sparepart

​
sparepart(
id_sparepart,
id_supplier,
nama_sparepart,
merek,
satuan,
stok,
stok_minimum,
harga_beli,
harga_jual
)

### 8. Tabel transaksi_servis

​
transaksi_servis(
id_transaksi,
id_kendaraan,
id_mekanik,
tanggal_masuk,
tanggal_selesai,
keluhan,
status_servis
)

### 9. Tabel detail_jasa_servis

​
detail_jasa_servis(
id_detail_jasa,
id_transaksi,
id_jasa,
biaya_jasa,
qty,
subtotal_jasa,
catatan
)

### 10. Tabel detail_sparepart

​
detail_sparepart(
id_detail_sparepart,
id_transaksi,
id_sparepart,
jumlah,
harga_satuan,
subtotal_sparepart
)

### 11. Tabel invoice

​
invoice(
id_invoice,
id_transaksi,
tanggal_invoice,
total_jasa,
total_sparepart,
total_tagihan,
status_invoice
)

### 12. Tabel pembayaran

​
pembayaran(
id_pembayaran,
id_invoice,
tanggal_bayar,
metode_pembayaran,
jumlah_bayar,
status_pembayaran
)

## Normalisasi

Normalisasi dilakukan untuk mengurangi redundansi data, menjaga konsistensi data, serta menghindari anomali insert, update, dan delete.

Tahapan normalisasi pada project ini meliputi:

### 1. Bentuk Tidak Normal / UNF

Pada tahap awal, data transaksi bengkel masih berada dalam satu tabel besar. Di dalam tabel tersebut terdapat atribut yang berisi banyak nilai, seperti daftar jasa dan daftar sparepart. Kondisi ini menyebabkan data belum memenuhi bentuk normal pertama karena terdapat repeating group.

### 2. Bentuk Normal Pertama / 1NF

Pada tahap 1NF, setiap atribut dibuat bernilai atomik atau tunggal. Atribut daftar jasa dan daftar sparepart dipisahkan sehingga setiap baris hanya berisi satu nilai untuk setiap atribut.

### 3. Bentuk Normal Kedua / 2NF

Pada tahap 2NF, data yang tidak bergantung penuh pada primary key dipisahkan ke tabel yang lebih spesifik. Data pelanggan, kendaraan, mekanik, jasa servis, sparepart, transaksi servis, invoice, dan pembayaran dipisahkan ke dalam tabel masing-masing.

### 4. Bentuk Normal Ketiga / 3NF

Pada tahap 3NF, ketergantungan transitif dihilangkan. Tabel jasa servis dipisahkan dari kategori servis, sedangkan tabel sparepart dipisahkan dari supplier. Dengan demikian, setiap atribut non-key hanya bergantung pada primary key tabel masing-masing.

Hasil akhir normalisasi menghasilkan 12 tabel utama yang telah memenuhi kaidah 3NF.

## Teknologi yang Digunakan

Project ini menggunakan beberapa teknologi dan tools berikut:

- MySQL
- MySQL Workbench
- SQL
- GitHub
- Draw.io / diagrams.net untuk pembuatan ERD
- Microsoft Word atau Google Docs untuk dokumentasi laporan

## Fitur Database

Fitur database yang diimplementasikan dalam project ini meliputi:

1. Pembuatan database `bengkel_kendaraan`.
2. Pembuatan 12 tabel utama.
3. Penggunaan primary key pada setiap tabel.
4. Penggunaan foreign key untuk menghubungkan antar tabel.
5. Penggunaan constraint `NOT NULL`, `UNIQUE`, `CHECK`, dan `ENUM`.
6. Penggunaan index untuk meningkatkan performa query.
7. Pengisian data dummy realistis menggunakan DML.
8. Pembuatan query SELECT sederhana.
9. Pembuatan query JOIN dengan beberapa tabel.
10. Pembuatan query subquery dan CTE.
11. Pembuatan query agregasi dengan GROUP BY dan HAVING.
12. Pembuatan view untuk riwayat servis dan monitoring stok sparepart.
13. Pembuatan stored procedure untuk membuat invoice otomatis.
14. Pembuatan trigger untuk mengurangi stok sparepart secara otomatis.
15. Pembuatan function untuk menghitung total tagihan transaksi.

## Cara Menjalankan Script

Berikut adalah langkah-langkah untuk menjalankan script database Sistem Bengkel Kendaraan.

### 1. Clone Repository

Clone repository project dari GitHub:

​
git clone https://github.com/annekeshantika-a11y/Bengkel-Basis-Data.git

Masuk ke folder project:

​
cd Bengkel-Basis-Data

### 2. Buka DBMS

Gunakan salah satu aplikasi DBMS yang mendukung MySQL, seperti:

- MySQL Workbench
- phpMyAdmin
- DBeaver
- HeidiSQL
- Laragon
- XAMPP

### 3. Jalankan Script DDL

Script DDL digunakan untuk membuat database, tabel, constraint, relasi, dan index.

Buka dan jalankan file:

​
sql/01_ddl.sql

File ini akan membuat database:

​
bengkel_kendaraan

dan tabel-tabel berikut:

​
pelanggan
kendaraan
mekanik
kategori_servis
jasa_servis
supplier
sparepart
transaksi_servis
detail_jasa_servis
detail_sparepart
invoice
pembayaran

### 4. Jalankan Script DML

Setelah script DDL berhasil dijalankan, lanjutkan dengan menjalankan script DML.

Buka dan jalankan file:

​
sql/02_dml.sql

Script DML digunakan untuk mengisi data dummy ke dalam tabel, seperti:

- 20 data pelanggan
- 25 data kendaraan
- 20 data mekanik
- 7 data kategori servis
- 20 data jasa servis
- 5 data supplier
- 20 data sparepart
- 25 data transaksi servis
- Data detail jasa servis
- Data detail sparepart
- Data invoice
- Data pembayaran

### 5. Jalankan Script Query SELECT

Untuk melakukan pengujian query, jalankan file:

​
sql/03_query_select.sql

Script ini berisi query pengujian seperti:

- Query daftar seluruh pelanggan
- Query sparepart dengan stok rendah
- Query transaksi dengan status diproses
- Query riwayat servis kendaraan
- Query detail invoice dan pembayaran
- Query detail sparepart per transaksi
- Query jasa servis per kategori
- Query pelanggan dengan transaksi terbanyak
- Query rekap pendapatan per bulan
- Query mekanik paling produktif

### 6. Jalankan Script View

Untuk membuat view, jalankan file:

​
sql/04_view.sql

View yang dibuat antara lain:

​
v_riwayat_servis
v_stok_sparepart

View `v_riwayat_servis` digunakan untuk menampilkan riwayat servis lengkap, sedangkan view `v_stok_sparepart` digunakan untuk memantau kondisi stok sparepart.

### 7. Jalankan Script Stored Procedure

Untuk membuat stored procedure, jalankan file:

​
sql/05_stored_procedure.sql

Stored procedure yang dibuat adalah:

​
sp_buat_invoice

Stored procedure ini digunakan untuk membuat invoice secara otomatis berdasarkan id transaksi.

Contoh pemanggilan stored procedure:

​
CALL sp_buat_invoice(24);

### 8. Jalankan Script Trigger

Untuk membuat trigger, jalankan file:

​
sql/06_trigger.sql

Trigger yang dibuat adalah:

​
trg_kurangi_stok

Trigger ini digunakan untuk mengurangi stok sparepart secara otomatis ketika data penggunaan sparepart dimasukkan ke tabel `detail_sparepart`.

### 9. Jalankan Script Function

Untuk membuat function, jalankan file:

​
sql/07_function.sql

Function yang dibuat adalah:

​
fn_total_tagihan

Function ini digunakan untuk menghitung total tagihan berdasarkan id transaksi.

Contoh penggunaan function:

​
SELECT fn_total_tagihan(1) AS total_tagihan_transaksi_1;

### 10. Cek Database

Untuk memastikan seluruh tabel sudah berhasil dibuat, jalankan perintah:

​
SHOW TABLES;

Untuk melihat isi salah satu tabel, jalankan contoh query berikut:

​
SELECT * FROM pelanggan;

Untuk mengecek jumlah data dalam setiap tabel, dapat menggunakan query:

​
SELECT COUNT(*) FROM pelanggan;
SELECT COUNT(*) FROM kendaraan;
SELECT COUNT(*) FROM mekanik;
SELECT COUNT(*) FROM kategori_servis;
SELECT COUNT(*) FROM jasa_servis;
SELECT COUNT(*) FROM supplier;
SELECT COUNT(*) FROM sparepart;
SELECT COUNT(*) FROM transaksi_servis;
SELECT COUNT(*) FROM detail_jasa_servis;
SELECT COUNT(*) FROM detail_sparepart;
SELECT COUNT(*) FROM invoice;
SELECT COUNT(*) FROM pembayaran;

## Urutan Menjalankan File SQL

Agar tidak terjadi error karena relasi foreign key, jalankan file SQL sesuai urutan berikut:

​
sql/01_ddl.sql
sql/02_dml.sql
sql/03_query_select.sql
sql/04_view.sql
sql/05_stored_procedure.sql
sql/06_trigger.sql
sql/07_function.sql

Pastikan script DDL dijalankan terlebih dahulu sebelum script DML, karena tabel harus dibuat terlebih dahulu sebelum data dimasukkan.

## Struktur Folder

Struktur folder project disusun agar file SQL, dokumentasi, dan gambar pendukung mudah ditemukan.

​
Bengkel-Basis-Data/
│
├── README.md
│
├── sql/
│   ├── 01_ddl.sql
│   ├── 02_dml.sql
│   ├── 03_query_select.sql
│   ├── 04_view.sql
│   ├── 05_stored_procedure.sql
│   ├── 06_trigger.sql
│   └── 07_function.sql
│
├── assets/
│   ├── erd-bengkel-kendaraan.png
│   └── alur-proses-bengkel.png
│
├── docs/
│   └── laporan-project-basis-data.pdf
│
└── README.md

## Keterangan Struktur Folder

| Folder/File | Keterangan |
|---|---|
| `README.md` | Berisi deskripsi project, anggota tim, cara menjalankan script, ERD, dan struktur folder. |
| `sql/` | Folder yang berisi seluruh script SQL. |
| `01_ddl.sql` | Script untuk membuat database, tabel, primary key, foreign key, constraint, dan index. |
| `02_dml.sql` | Script untuk mengisi data dummy ke dalam database. |
| `03_query_select.sql` | Script berisi query SELECT untuk pengujian data. |
| `04_view.sql` | Script untuk membuat view. |
| `05_stored_procedure.sql` | Script untuk membuat stored procedure. |
| `06_trigger.sql` | Script untuk membuat trigger. |
| `07_function.sql` | Script untuk membuat function. |
| `assets/` | Folder untuk menyimpan gambar ERD dan gambar alur proses sistem. |
| `erd-bengkel-kendaraan.png` | Gambar Entity Relationship Diagram Sistem Bengkel Kendaraan. |
| `alur-proses-bengkel.png` | Gambar alur proses Sistem Bengkel Kendaraan. |
| `docs/` | Folder untuk menyimpan dokumentasi laporan project. |
| `laporan-project-basis-data.pdf` | File laporan lengkap project basis data. |

## Daftar Tabel dan Fungsi

Berikut adalah daftar tabel yang digunakan dalam database:

| No | Nama Tabel | Fungsi |
|---|---|---|
| 1 | `pelanggan` | Menyimpan data pelanggan bengkel. |
| 2 | `kendaraan` | Menyimpan data kendaraan milik pelanggan. |
| 3 | `mekanik` | Menyimpan data mekanik bengkel. |
| 4 | `kategori_servis` | Menyimpan kategori layanan servis. |
| 5 | `jasa_servis` | Menyimpan data jasa servis dan biaya jasa. |
| 6 | `supplier` | Menyimpan data supplier sparepart. |
| 7 | `sparepart` | Menyimpan data sparepart, stok, dan harga. |
| 8 | `transaksi_servis` | Menyimpan data utama transaksi servis kendaraan. |
| 9 | `detail_jasa_servis` | Menyimpan rincian jasa servis pada setiap transaksi. |
| 10 | `detail_sparepart` | Menyimpan rincian penggunaan sparepart pada transaksi. |
| 11 | `invoice` | Menyimpan data tagihan transaksi servis. |
| 12 | `pembayaran` | Menyimpan data pembayaran atas invoice. |

## Query Pengujian

Project ini menyediakan 10 query SELECT untuk menguji database, yaitu:

1. Daftar seluruh pelanggan.
2. Daftar sparepart dengan stok rendah.
3. Daftar transaksi dengan status diproses atau menunggu.
4. Riwayat servis per kendaraan.
5. Detail invoice dan pembayaran.
6. Detail sparepart yang digunakan per transaksi.
7. Jasa servis per kategori.
8. Pelanggan dengan transaksi terbanyak.
9. Rekap pendapatan per bulan.
10. Mekanik paling produktif.

Query tersebut digunakan untuk memastikan bahwa relasi antar tabel berjalan dengan baik dan data dapat ditampilkan sesuai kebutuhan operasional bengkel.

## View

Project ini memiliki 2 view utama, yaitu:

### 1. `v_riwayat_servis`

View ini digunakan untuk menampilkan riwayat servis secara lengkap dengan menggabungkan data dari tabel transaksi servis, kendaraan, pelanggan, mekanik, dan invoice.

### 2. `v_stok_sparepart`

View ini digunakan untuk memantau stok sparepart. View ini menampilkan informasi nama sparepart, merek, satuan, stok, stok minimum, supplier, dan status stok.

Status stok dapat berupa:

- Stok Aman
- Stok Rendah
- Stok Habis

## Stored Procedure

Stored procedure yang dibuat dalam project ini adalah:

​
sp_buat_invoice

Stored procedure ini digunakan untuk membuat invoice secara otomatis berdasarkan `id_transaksi`. Procedure akan menghitung total biaya jasa dan total biaya sparepart, kemudian menyimpan hasilnya ke tabel `invoice`.

Jika invoice untuk transaksi tersebut sudah ada, maka procedure akan menampilkan pesan error.

## Trigger

Trigger yang dibuat dalam project ini adalah:

​
trg_kurangi_stok

Trigger ini dijalankan secara otomatis ketika terdapat data baru yang dimasukkan ke tabel `detail_sparepart`.

Fungsi trigger ini adalah:

1. Mengecek stok sparepart yang tersedia.
2. Membatalkan proses insert jika stok tidak mencukupi.
3. Mengurangi stok sparepart jika stok tersedia.

Dengan adanya trigger ini, stok sparepart dapat diperbarui secara otomatis ketika sparepart digunakan dalam transaksi servis.

## Function

Function yang dibuat dalam project ini adalah:

​
fn_total_tagihan

Function ini digunakan untuk menghitung total tagihan berdasarkan `id_transaksi`.

Total tagihan dihitung dari:

​
total biaya jasa + total biaya sparepart

Function ini hanya membaca data dan tidak melakukan perubahan pada tabel.

## Contoh Alur Penggunaan Database

Alur penggunaan database Sistem Bengkel Kendaraan adalah sebagai berikut:

1. Admin memasukkan data pelanggan.
2. Admin memasukkan data kendaraan milik pelanggan.
3. Admin mencatat data mekanik.
4. Admin mencatat kategori servis dan jasa servis.
5. Admin mencatat data supplier dan sparepart.
6. Admin membuat transaksi servis ketika pelanggan datang ke bengkel.
7. Mekanik melakukan pemeriksaan dan menentukan jasa servis.
8. Jika terdapat penggunaan sparepart, data sparepart dimasukkan ke detail transaksi.
9. Stok sparepart otomatis berkurang melalui trigger.
10. Setelah servis selesai, invoice dibuat.
11. Pelanggan melakukan pembayaran.
12. Data transaksi tersimpan sebagai riwayat servis kendaraan.

## Kesimpulan

Project Sistem Basis Data Bengkel Kendaraan berhasil merancang dan mengimplementasikan database relasional yang dapat digunakan untuk mengelola data operasional bengkel secara terintegrasi.

Database ini terdiri dari 12 tabel utama yang saling berhubungan melalui primary key dan foreign key. Struktur database telah melalui proses normalisasi hingga bentuk normal ketiga atau 3NF sehingga dapat mengurangi redundansi data dan menjaga konsistensi data.

Selain itu, project ini juga dilengkapi dengan implementasi SQL berupa DDL, DML, query SELECT, view, stored procedure, trigger, dan function. Dengan demikian, database ini dapat menjadi dasar untuk pengembangan sistem informasi bengkel berbasis web, desktop, atau aplikasi lainnya di masa mendatang.

## Repository

Link repository GitHub project:

​
https://github.com/annekeshantika-a11y/Bengkel-Basis-Data
