-- ============================================================
-- Script DML (INSERT INTO) - Database bengkel_kendaraan
-- ============================================================
USE bengkel_kendaraan;
-- ============================================================
-- 1. PELANGGAN
-- ============================================================
INSERT IGNORE INTO pelanggan (nama_pelanggan, no_hp, email, alamat, tgl_daftar) VALUES
('Budi Santoso',       '081234567801', 'budi.santoso@gmail.com',      'Jl. Mawar No. 12, Purwokerto',     '2023-01-05'),
('Siti Rahayu',        '081234567802', 'siti.rahayu@yahoo.com',       'Jl. Melati No. 7, Purwokerto',     '2023-02-10'),
('Agus Prayitno',      '081234567803', 'agus.prayitno@gmail.com',     'Jl. Kenanga No. 3, Banyumas',      '2023-03-15'),
('Dewi Lestari',       '081234567804', 'dewi.lestari@gmail.com',      'Jl. Dahlia No. 21, Cilacap',       '2023-04-01'),
('Rizky Firmansyah',   '081234567805', 'rizky.firmansyah@gmail.com',  'Jl. Anggrek No. 5, Purwokerto',    '2023-04-20'),
('Lina Marlina',       '081234567806', 'lina.marlina@gmail.com',      'Jl. Flamboyan No. 9, Sokaraja',    '2023-05-03'),
('Hendra Gunawan',     '081234567807', 'hendra.gunawan@gmail.com',    'Jl. Walet No. 14, Banyumas',       '2023-05-18'),
('Yuni Astuti',        '081234567808', 'yuni.astuti@gmail.com',       'Jl. Cempaka No. 6, Purwokerto',    '2023-06-07'),
('Doni Prasetyo',      '081234567809', 'doni.prasetyo@gmail.com',     'Jl. Nangka No. 30, Cilacap',       '2023-06-22'),
('Rina Kusumawati',    '081234567810', 'rina.kusumawati@gmail.com',   'Jl. Pisang No. 17, Banyumas',      '2023-07-10'),
('Wahyu Nugroho',      '081234567811', 'wahyu.nugroho@gmail.com',     'Jl. Mangga No. 8, Purwokerto',     '2023-07-25'),
('Fitri Handayani',    '081234567812', 'fitri.handayani@gmail.com',   'Jl. Rambutan No. 2, Sokaraja',     '2023-08-05'),
('Bambang Wibowo',     '081234567813', 'bambang.wibowo@gmail.com',    'Jl. Durian No. 11, Banyumas',      '2023-08-19'),
('Nurul Hidayah',      '081234567814', 'nurul.hidayah@gmail.com',     'Jl. Sukun No. 23, Purwokerto',     '2023-09-01'),
('Teguh Santoso',      '081234567815', 'teguh.santoso@gmail.com',     'Jl. Jeruk No. 4, Cilacap',         '2023-09-14'),
('Sri Mulyani',        '081234567816', 'sri.mulyani@gmail.com',       'Jl. Apel No. 16, Banyumas',        '2023-10-03'),
('Eko Susanto',        '081234567817', 'eko.susanto@gmail.com',       'Jl. Salak No. 19, Purwokerto',     '2023-10-20'),
('Ayu Puspita',        '081234567818', 'ayu.puspita@gmail.com',       'Jl. Nanas No. 27, Sokaraja',       '2023-11-08'),
('Irwan Setiawan',     '081234567819', 'irwan.setiawan@gmail.com',    'Jl. Strawberry No. 33, Banyumas',  '2023-11-22'),
('Ratna Sari',         '081234567820', 'ratna.sari@gmail.com',        'Jl. Belimbing No. 10, Purwokerto', '2023-12-01');
-- ============================================================
-- 2. MEKANIK
-- ============================================================
INSERT IGNORE INTO mekanik (nama_mekanik, no_hp, spesialisasi, status_mekanik) VALUES
('Ahmad Fauzi',     '082111111101', 'Tune Up & Servis Mesin',    'aktif'),
('Beni Kurniawan',  '082111111102', 'Kelistrikan Kendaraan',     'aktif'),
('Candra Wijaya',   '082111111103', 'Sistem Rem & Suspensi',     'aktif'),
('Dedi Hermawan',   '082111111104', 'Servis Ringan & Ganti Oli', 'aktif'),
('Edi Susilo',      '082111111105', 'Perbaikan Body & Cat',      'aktif'),
('Fajar Rizal',     '082111111106', 'Tune Up & Karburator',      'aktif'),
('Guntur Prasetyo', '082111111107', 'AC Kendaraan',              'aktif'),
('Hadi Santoso',    '082111111108', 'Transmisi Manual & Matic',  'aktif'),
('Ivan Maulana',    '082111111109', 'Servis Mesin Berat',        'aktif'),
('Joko Purnomo',    '082111111110', 'Sistem Bahan Bakar',        'aktif'),
('Andi Saputra',    '082111111111', 'Servis Ringan & Ganti Oli', 'aktif'),
('Lukman Hakim',    '082111111112', 'Kelistrikan & ECU',         'aktif'),
('Maman Sudarma',   '082111111113', 'Sistem Rem & Kopling',      'aktif'),
('Nanang Kosim',    '082111111114', 'Perbaikan Body & Las',      'nonaktif'),
('Oki Pratama',     '082111111115', 'Tune Up Injeksi',           'aktif'),
('Prio Utomo',      '082111111116', 'AC & Kelistrikan',          'aktif'),
('Qori Abdillah',   '082111111117', 'Servis Transmisi Matic',    'aktif'),
('Rudi Hartono',    '082111111118', 'Mesin Diesel',              'aktif'),
('Slamet Riyadi',   '082111111119', 'Servis Ringan & Tune Up',   'nonaktif'),
('Tono Wicaksono',  '082111111120', 'Perbaikan Kaki-Kaki',       'aktif');
-- ============================================================
-- 3. KATEGORI_SERVIS
-- ============================================================
INSERT IGNORE INTO kategori_servis (nama_kategori, deskripsi) VALUES
('Servis Ringan', 'Perawatan rutin seperti ganti oli, filter, dan pemeriksaan umum kendaraan'),
('Servis Mesin',  'Perbaikan dan perawatan komponen mesin kendaraan'),
('Kelistrikan',   'Perbaikan sistem kelistrikan, aki, dan komponen elektronik kendaraan'),
('Sistem Rem',    'Perawatan dan perbaikan sistem pengereman kendaraan'),
('AC Kendaraan',  'Perawatan, pengisian freon, dan perbaikan sistem AC kendaraan'),
('Body & Cat',    'Perbaikan bodi, pengecatan, dan penghilangan penyok kendaraan'),
('Kaki-Kaki',     'Perawatan dan perbaikan suspensi, ban, dan sistem kemudi kendaraan');
-- ============================================================
-- 4. SUPPLIER
-- ============================================================
INSERT IGNORE INTO supplier (nama_supplier, no_hp, email, alamat) VALUES
('PT Astra Otoparts',      '0217654321', 'astraotoparts@astra.co.id',  'Jl. Raya Pegangsaan Dua No. 1, Jakarta Timur'),
('CV Maju Jaya Sparepart', '0281654321', 'majujaya.sp@gmail.com',      'Jl. Jend. Sudirman No. 45, Purwokerto'),
('UD Sumber Makmur',       '0281654322', 'sumbermakmur.sp@gmail.com',  'Jl. Gerilya No. 78, Banyumas'),
('PT Federal Parts Center','0218765432', 'federalparts@federal.co.id', 'Jl. Tipar Cakung No. 12, Jakarta Timur'),
('CV Berkah Motor Parts',  '0281654323', 'berkahmotor.pw@gmail.com',   'Jl. Pemuda No. 22, Purwokerto');
-- ============================================================
-- 5. KENDARAAN
-- ============================================================
INSERT IGNORE INTO kendaraan (id_pelanggan, no_polisi, merek, tipe, tahun, warna, jenis_transmisi, no_rangka, no_mesin) VALUES
(1,  'R 1234 AB', 'Honda',      'Brio RS',           2021, 'Putih',  'Matic',  'MHRDD3860MJ100001', 'L13Z41100001'),
(2,  'R 2345 CD', 'Toyota',     'Avanza G',          2020, 'Silver', 'Manual', 'MHFM5FB3J0K200002', 'DH3200002'),
(3,  'R 3456 EF', 'Honda',      'Beat Street',       2022, 'Hitam',  'Matic',  'MH1JFP110NK300003', 'JFP1E1300003'),
(4,  'R 4567 GH', 'Yamaha',     'NMAX 155',          2021, 'Biru',   'Matic',  'MH3SG3610MJ400004', 'G3E1400004'),
(5,  'R 5678 IJ', 'Toyota',     'Calya G',           2019, 'Merah',  'Manual', 'MHFM1FB3J0K500005', 'M700200005'),
(6,  'R 6789 KL', 'Suzuki',     'Ertiga GS',         2020, 'Putih',  'Manual', 'MHYEA5DV0LJ600006', 'K15B00006'),
(7,  'R 7890 MN', 'Honda',      'Jazz RS',           2018, 'Silver', 'Matic',  'MHRGE8560JJ700007', 'L15B700007'),
(8,  'R 8901 OP', 'Daihatsu',   'Xenia R Sporty',    2021, 'Hitam',  'Matic',  'MHKV1BA3JBK800008', 'DYDB00008'),
(9,  'R 9012 QR', 'Yamaha',     'Mio M3 125',        2020, 'Merah',  'Matic',  'MH3SE8510LK900009', 'E3N1900009'),
(10, 'R 1122 ST', 'Honda',      'Vario 125',         2022, 'Putih',  'Matic',  'MH1JB8110NK010010', 'JB81E1010010'),
(11, 'B 2233 AA', 'Toyota',     'Innova G Diesel',   2019, 'Hitam',  'Manual', 'MHFW2BEM8K0110011', '2GD011011'),
(12, 'B 3344 BB', 'Honda',      'HR-V E CVT',        2020, 'Putih',  'Matic',  'MHRRU5750LJ120012', 'L15B120012'),
(13, 'B 4455 CC', 'Mitsubishi', 'Xpander GLS',       2021, 'Silver', 'Matic',  'MMBMHKF40MH130013', '4B10AI130013'),
(14, 'R 5566 AB', 'Honda',      'Scoopy Stylish',    2021, 'Biru',   'Matic',  'MH1JK3130MK140014', 'JK31E1140014'),
(15, 'R 6677 CD', 'Yamaha',     'Aerox 155 S',       2022, 'Hitam',  'Matic',  'MH3RG3310NK150015', 'G3C1150015'),
(16, 'R 7788 EF', 'Suzuki',     'Satria F150',       2020, 'Merah',  'Manual', 'MH8CF4CA0LJ160016', 'F4J1160016'),
(17, 'R 8899 GH', 'Honda',      'CB150R StreetFire', 2021, 'Hitam',  'Manual', 'MH1KC1410MK170017', 'KC14E1170017'),
(18, 'R 9900 IJ', 'Toyota',     'Agya G',            2020, 'Putih',  'Matic',  'MHFM1BA3J0K180018', 'M900180018'),
(19, 'R 1001 KL', 'Daihatsu',   'Sigra D',           2021, 'Silver', 'Manual', 'MHKV5BA3JBK190019', 'DYMC190019'),
(20, 'R 1002 MN', 'Honda',      'Revo Fit FI',       2022, 'Biru',   'Manual', 'MH1JFC110NK200020', 'JFC1E1200020'),
(1,  'R 1003 OP', 'Yamaha',     'V-Ixion R',         2020, 'Hitam',  'Manual', 'MH3RJ2710LK210021', 'RJ27E210021'),
(3,  'R 1004 QR', 'Honda',      'PCX 160',           2022, 'Putih',  'Matic',  'MH1KF0610NK220022', 'KF06E1220022'),
(5,  'R 1005 ST', 'Suzuki',     'Carry Pick Up',     2019, 'Putih',  'Manual', 'MHYGR410KJ230023',  'G15A230023'),
(7,  'R 1006 AA', 'Toyota',     'Rush G AT',         2020, 'Silver', 'Matic',  'MHFM4FB3J0K240024', 'WR05240024'),
(10, 'R 1007 BB', 'Yamaha',     'FreeGo 125',        2021, 'Merah',  'Matic',  'MH3SG5810MK250025', 'G5B1250025');
-- ============================================================
-- 6. JASA_SERVIS
-- ============================================================
INSERT IGNORE INTO jasa_servis (id_kategori, nama_jasa, deskripsi, biaya_jasa, estimasi_menit) VALUES
(1, 'Ganti Oli Mesin',            'Penggantian oli mesin sesuai spesifikasi kendaraan',                      50000.00,  30),
(1, 'Ganti Filter Oli',           'Penggantian filter oli mesin',                                            25000.00,  20),
(1, 'Servis Ringan Berkala',      'Pemeriksaan umum dan penggantian komponen rutin kendaraan',               150000.00, 90),
(1, 'Ganti Filter Udara',         'Penggantian filter udara kendaraan',                                      30000.00,  20),
(2, 'Tune Up Karburator',         'Pembersihan dan penyetelan karburator',                                   120000.00, 60),
(2, 'Tune Up Injeksi (EFI)',      'Pembersihan injektor dan penyetelan sistem bahan bakar injeksi',           175000.00, 75),
(2, 'Overhaul Mesin Ringan',      'Pembongkaran dan pemasangan kembali komponen mesin atas',                 750000.00, 300),
(2, 'Servis Karburator',          'Pembersihan dan penyetelan ulang karburator',                              80000.00,  45),
(3, 'Perbaikan Sistem Starter',   'Pemeriksaan dan perbaikan motor starter kendaraan',                       100000.00, 60),
(3, 'Ganti Aki',                  'Penggantian aki kendaraan',                                                50000.00,  30),
(3, 'Cek dan Servis Kelistrikan', 'Pemeriksaan menyeluruh sistem kelistrikan kendaraan',                     100000.00, 60),
(4, 'Ganti Kampas Rem Depan',     'Penggantian kampas rem depan kendaraan',                                   75000.00,  45),
(4, 'Ganti Kampas Rem Belakang',  'Penggantian kampas rem belakang kendaraan',                                75000.00,  45),
(4, 'Servis Rem Cakram',          'Pembersihan dan penyetelan sistem rem cakram',                              80000.00,  60),
(5, 'Isi Freon AC',               'Pengisian freon dan pemeriksaan sistem AC kendaraan',                     150000.00, 60),
(5, 'Servis AC Lengkap',          'Pembersihan evaporator, kondensor, dan penggantian filter kabin',          350000.00, 120),
(6, 'Perbaikan Penyok Ringan',    'Perbaikan penyok ringan pada bodi kendaraan tanpa pengecatan',             200000.00, 120),
(7, 'Balancing Roda',             'Penyeimbangan roda kendaraan agar lebih stabil',                           50000.00,  30),
(7, 'Spooring',                   'Penyetelan geometri roda agar kendaraan tidak menarik ke satu sisi',       100000.00, 60),
(7, 'Ganti Oli Gardan',           'Penggantian oli gardan atau transmisi kendaraan',                          60000.00,  30);
-- ============================================================
-- 7. SPAREPART
-- ============================================================
INSERT IGNORE INTO sparepart (id_supplier, nama_sparepart, merek, satuan, stok, stok_minimum, harga_beli, harga_jual) VALUES
(1, 'Oli Mesin 10W-40',            'Enduro',         'liter',  80, 20,  35000.00,  50000.00),
(1, 'Oli Mesin 5W-30',             'Shell Helix',    'liter',  60, 15,  55000.00,  75000.00),
(4, 'Filter Oli Honda Beat/Vario', 'Honda Genuine',  'pcs',    50, 10,  18000.00,  28000.00),
(4, 'Filter Oli Toyota Avanza',    'Toyota Genuine', 'pcs',    40, 10,  22000.00,  35000.00),
(2, 'Filter Udara Honda Beat',     'K&N',            'pcs',    35,  8,  25000.00,  38000.00),
(2, 'Filter Udara Yamaha NMAX',    'Yamaha Genuine', 'pcs',    30,  8,  28000.00,  42000.00),
(3, 'Kampas Rem Depan Honda',      'FBK',            'set',    40, 10,  35000.00,  55000.00),
(3, 'Kampas Rem Belakang Honda',   'FBK',            'set',    40, 10,  30000.00,  50000.00),
(4, 'Kampas Rem Depan Toyota',     'Bendix',         'set',    25,  8,  65000.00,  95000.00),
(1, 'Aki 35 Ah (Motor)',           'GS Astra',       'pcs',    20,  5, 180000.00, 250000.00),
(1, 'Aki 45 Ah (Mobil)',           'Yuasa',          'pcs',    15,  5, 450000.00, 600000.00),
(2, 'Busi Iridium Honda',          'NGK',            'pcs',    60, 15,  35000.00,  55000.00),
(2, 'Busi Platinum Yamaha',        'Denso',          'pcs',    55, 15,  30000.00,  48000.00),
(5, 'V-Belt NMAX',                 'Yamaha Genuine', 'pcs',    25,  6,  95000.00, 140000.00),
(5, 'V-Belt Honda Vario',          'Honda Genuine',  'pcs',    25,  6,  85000.00, 125000.00),
(3, 'Freon AC R134a',              'Denso',          'kaleng', 30,  8,  65000.00,  95000.00),
(3, 'Minyak Rem DOT 4',            'Prestone',       'botol',  35,  8,  45000.00,  68000.00),
(4, 'Oli Gardan 80W-90',           'Federal',        'liter',  45, 10,  28000.00,  42000.00),
(5, 'Pelumas Rantai',              'WD-40',          'kaleng', 50, 10,  32000.00,  50000.00),
(2, 'Filter Bensin Universal',     'Facet',          'pcs',    28,  7,  22000.00,  38000.00);
-- ============================================================
-- 8. TRANSAKSI_SERVIS
-- ============================================================
INSERT IGNORE INTO transaksi_servis (id_kendaraan, id_mekanik, tanggal_masuk, tanggal_selesai, keluhan, status_servis) VALUES
(1,  1,  '2024-01-08 08:30:00', '2024-01-08 10:00:00', 'Ganti oli rutin, mesin terasa berat',                        'selesai'),
(2,  2,  '2024-01-10 09:00:00', '2024-01-10 11:30:00', 'Lampu depan redup, sistem kelistrikan diperiksa',            'selesai'),
(3,  4,  '2024-01-15 10:00:00', '2024-01-15 11:00:00', 'Servis rutin, ganti oli dan filter',                         'selesai'),
(4,  6,  '2024-01-20 08:00:00', '2024-01-20 09:30:00', 'Motor brebet saat digas, perlu tune up',                     'selesai'),
(5,  3,  '2024-02-05 08:30:00', '2024-02-05 10:30:00', 'Rem belakang bunyi decit, kampas tipis',                     'selesai'),
(6,  7,  '2024-02-10 09:00:00', '2024-02-10 11:00:00', 'AC tidak dingin, freon habis',                               'selesai'),
(7,  1,  '2024-02-14 08:00:00', '2024-02-14 10:30:00', 'Servis berkala 20.000 km, tune up injeksi',                  'selesai'),
(8,  4,  '2024-02-20 10:00:00', '2024-02-20 11:30:00', 'Ganti oli mesin dan filter rutin',                           'selesai'),
(9,  6,  '2024-03-01 08:30:00', '2024-03-01 09:30:00', 'Motor terasa berat, brebet di RPM rendah',                   'selesai'),
(10, 11, '2024-03-05 09:00:00', '2024-03-05 10:00:00', 'Servis rutin 5.000 km, ganti oli',                           'selesai'),
(11, 9,  '2024-03-10 08:00:00', '2024-03-12 17:00:00', 'Mesin ngelitik saat akselerasi, perlu overhaul ringan',      'selesai'),
(12, 2,  '2024-03-18 09:00:00', '2024-03-18 11:00:00', 'Starter susah, aki drop',                                    'selesai'),
(13, 7,  '2024-03-25 10:00:00', '2024-03-25 12:00:00', 'AC berbau tidak sedap, perlu servis AC lengkap',             'selesai'),
(14, 11, '2024-04-02 08:30:00', '2024-04-02 09:30:00', 'Ganti oli dan servis berkala rutin',                         'selesai'),
(15, 6,  '2024-04-08 09:00:00', '2024-04-08 10:00:00', 'V-belt aus, motor slip saat di gas',                         'selesai'),
(16, 3,  '2024-04-15 08:00:00', '2024-04-15 09:30:00', 'Rem depan tidak pakem, kampas habis',                        'selesai'),
(17, 1,  '2024-04-20 09:00:00', '2024-04-20 10:30:00', 'Servis berkala, ganti oli dan tune up injeksi',              'selesai'),
(18, 4,  '2024-05-03 08:30:00', '2024-05-03 09:30:00', 'Ganti oli rutin 5.000 km',                                   'selesai'),
(19, 8,  '2024-05-10 09:00:00', '2024-05-10 10:30:00', 'Transmisi berat, perlu ganti oli gardan',                    'selesai'),
(20, 11, '2024-05-15 08:00:00', '2024-05-15 09:00:00', 'Servis ringan, ganti filter udara dan oli',                  'selesai'),
(21, 15, '2024-05-22 09:00:00', '2024-05-22 10:30:00', 'Motor berat digas, tune up injeksi',                         'selesai'),
(22, 16, '2024-06-01 10:00:00', '2024-06-01 12:00:00', 'Spooring dan balancing, setir goyang',                       'selesai'),
(23, 9,  '2024-06-10 08:30:00', '2024-06-10 10:00:00', 'Servis berkala, ganti oli mesin dan filter',                 'selesai'),
(24, 7,  '2024-06-18 09:00:00', NULL,                   'AC tidak dingin sama sekali, butuh freon dan servis AC',     'diproses'),
(25, 20, '2024-06-25 08:00:00', NULL,                   'Kaki-kaki bunyi, minta spooring balancing dan cek suspensi', 'menunggu');
-- ============================================================
-- 9. DETAIL_JASA_SERVIS
-- ============================================================
INSERT IGNORE INTO detail_jasa_servis (id_transaksi, id_jasa, biaya_jasa, qty, subtotal_jasa, catatan) VALUES
(1,  1,  50000.00, 1,  50000.00, 'Oli 10W-40 sesuai rekomendasi'),
(1,  2,  25000.00, 1,  25000.00, NULL),
(2,  11, 100000.00, 1, 100000.00, 'Tegangan aki drop, direkomendasikan ganti'),
(2,  10, 50000.00,  1,  50000.00, NULL),
(3,  1,  50000.00,  1,  50000.00, NULL),
(3,  4,  30000.00,  1,  30000.00, NULL),
(4,  5,  120000.00, 1, 120000.00, 'Karburator kotor, sudah dibersihkan'),
(5,  13, 75000.00,  1,  75000.00, 'Kampas rem belakang kanan dan kiri diganti'),
(6,  15, 150000.00, 1, 150000.00, 'Freon R134a diisi ulang'),
(7,  3,  150000.00, 1, 150000.00, NULL),
(7,  6,  175000.00, 1, 175000.00, 'Injektor kotor, sudah dibersihkan'),
(8,  1,  50000.00,  1,  50000.00, NULL),
(8,  2,  25000.00,  1,  25000.00, NULL),
(9,  5,  120000.00, 1, 120000.00, NULL),
(10, 1,  50000.00,  1,  50000.00, NULL),
(11, 7,  750000.00, 1, 750000.00, 'Paking kepala silinder diganti'),
(12, 11, 100000.00, 1, 100000.00, NULL),
(12, 10, 50000.00,  1,  50000.00, 'Aki 45Ah untuk mobil'),
(13, 16, 350000.00, 1, 350000.00, 'Evaporator dan kondensor kotor'),
(14, 1,  50000.00,  1,  50000.00, NULL),
(14, 3,  150000.00, 1, 150000.00, NULL),
(15, 1,  50000.00,  1,  50000.00, NULL),
(16, 12, 75000.00,  1,  75000.00, NULL),
(17, 1,  50000.00,  1,  50000.00, NULL),
(17, 6,  175000.00, 1, 175000.00, NULL),
(18, 1,  50000.00,  1,  50000.00, NULL),
(19, 20, 60000.00,  1,  60000.00, 'Oli gardan 80W-90'),
(20, 3,  150000.00, 1, 150000.00, NULL),
(21, 6,  175000.00, 1, 175000.00, NULL),
(22, 19, 100000.00, 1, 100000.00, NULL),
(22, 18, 50000.00,  2, 100000.00, 'Balancing 2 roda depan'),
(23, 1,  50000.00,  1,  50000.00, NULL),
(23, 2,  25000.00,  1,  25000.00, NULL),
(24, 15, 150000.00, 1, 150000.00, NULL),
(24, 16, 350000.00, 1, 350000.00, NULL),
(25, 19, 100000.00, 1, 100000.00, NULL),
(25, 18, 50000.00,  2, 100000.00, NULL);
-- ============================================================
-- 10. DETAIL_SPAREPART
-- ============================================================
INSERT IGNORE INTO detail_sparepart (id_transaksi, id_sparepart, jumlah, harga_satuan, subtotal_sparepart) VALUES
(1,  1,  1,  50000.00,  50000.00),
(1,  3,  1,  28000.00,  28000.00),
(2,  10, 1, 250000.00, 250000.00),
(3,  1,  1,  50000.00,  50000.00),
(3,  5,  1,  38000.00,  38000.00),
(4,  13, 1,  48000.00,  48000.00),
(5,  8,  1,  50000.00,  50000.00),
(6,  16, 1,  95000.00,  95000.00),
(7,  2,  1,  75000.00,  75000.00),
(7,  3,  1,  28000.00,  28000.00),
(8,  1,  1,  50000.00,  50000.00),
(8,  3,  1,  28000.00,  28000.00),
(9,  12, 1,  55000.00,  55000.00),
(10, 1,  1,  50000.00,  50000.00),
(11, 4,  1,  35000.00,  35000.00),
(12, 11, 1, 600000.00, 600000.00),
(13, 16, 2,  95000.00, 190000.00),
(14, 1,  1,  50000.00,  50000.00),
(14, 3,  1,  28000.00,  28000.00),
(15, 14, 1, 140000.00, 140000.00),
(16, 7,  1,  55000.00,  55000.00),
(17, 1,  1,  50000.00,  50000.00),
(18, 1,  1,  50000.00,  50000.00),
(19, 18, 1,  42000.00,  42000.00),
(20, 1,  1,  50000.00,  50000.00),
(20, 6,  1,  42000.00,  42000.00),
(21, 12, 2,  55000.00, 110000.00),
(22, 19, 1,  50000.00,  50000.00),
(23, 1,  1,  50000.00,  50000.00),
(23, 3,  1,  28000.00,  28000.00);
-- ============================================================
-- 11. INVOICE
-- ============================================================
INSERT IGNORE INTO invoice (id_transaksi, tanggal_invoice, total_jasa, total_sparepart, status_invoice) VALUES
(1,  '2024-01-08', 75000.00,   78000.00,  'lunas'),
(2,  '2024-01-10', 150000.00, 250000.00,  'lunas'),
(3,  '2024-01-15', 80000.00,   88000.00,  'lunas'),
(4,  '2024-01-20', 120000.00,  48000.00,  'lunas'),
(5,  '2024-02-05', 75000.00,   50000.00,  'lunas'),
(6,  '2024-02-10', 150000.00,  95000.00,  'lunas'),
(7,  '2024-02-14', 325000.00, 103000.00,  'lunas'),
(8,  '2024-02-20', 75000.00,   78000.00,  'lunas'),
(9,  '2024-03-01', 120000.00,  55000.00,  'lunas'),
(10, '2024-03-05', 50000.00,   50000.00,  'lunas'),
(11, '2024-03-12', 750000.00,  35000.00,  'sebagian'),
(12, '2024-03-18', 150000.00, 600000.00,  'lunas'),
(13, '2024-03-25', 350000.00, 190000.00,  'lunas'),
(14, '2024-04-02', 200000.00,  78000.00,  'lunas'),
(15, '2024-04-08', 50000.00,  140000.00,  'lunas'),
(16, '2024-04-15', 75000.00,   55000.00,  'lunas'),
(17, '2024-04-20', 225000.00,  50000.00,  'lunas'),
(18, '2024-05-03', 50000.00,   50000.00,  'lunas'),
(19, '2024-05-10', 60000.00,   42000.00,  'lunas'),
(20, '2024-05-15', 150000.00,  92000.00,  'lunas'),
(21, '2024-05-22', 175000.00, 110000.00,  'lunas'),
(22, '2024-06-01', 200000.00,  50000.00,  'lunas'),
(23, '2024-06-10', 75000.00,   78000.00,  'lunas');
-- ============================================================
-- 12. PEMBAYARAN
-- ============================================================
INSERT IGNORE INTO pembayaran (id_invoice, tanggal_bayar, metode_pembayaran, jumlah_bayar) VALUES
(1,  '2024-01-08', 'Tunai',    153000.00),
(2,  '2024-01-10', 'Transfer', 400000.00),
(3,  '2024-01-15', 'Tunai',    168000.00),
(4,  '2024-01-20', 'QRIS',     168000.00),
(5,  '2024-02-05', 'Tunai',    125000.00),
(6,  '2024-02-10', 'Transfer', 245000.00),
(7,  '2024-02-14', 'Tunai',    428000.00),
(8,  '2024-02-20', 'QRIS',     153000.00),
(9,  '2024-03-01', 'Tunai',    175000.00),
(10, '2024-03-05', 'Tunai',    100000.00),
(11, '2024-03-15', 'Transfer', 400000.00),
(12, '2024-03-18', 'QRIS',     750000.00),
(13, '2024-03-25', 'Tunai',    540000.00),
(14, '2024-04-02', 'Transfer', 278000.00),
(15, '2024-04-08', 'Tunai',    190000.00),
(16, '2024-04-15', 'QRIS',     130000.00),
(17, '2024-04-20', 'Tunai',    275000.00),
(18, '2024-05-03', 'Transfer', 100000.00),
(19, '2024-05-10', 'Tunai',    102000.00),
(20, '2024-05-15', 'QRIS',     242000.00),
(21, '2024-05-22', 'Transfer', 285000.00),
(22, '2024-06-01', 'Tunai',    250000.00),
(23, '2024-06-10', 'Transfer', 153000.00);