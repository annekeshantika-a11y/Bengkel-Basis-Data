-- ============================================================
-- Script DDL — Sistem Bengkel Kendaraan
-- ============================================================
CREATE DATABASE IF NOT EXISTS bengkel_kendaraan
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE bengkel_kendaraan;
 
-- Tabel: pelanggan
CREATE TABLE pelanggan (
  id_pelanggan INT NOT NULL AUTO_INCREMENT,
  nama_pelanggan VARCHAR(100) NOT NULL,
  no_hp VARCHAR(15) NOT NULL,
  email VARCHAR(100) UNIQUE,
  alamat TEXT NOT NULL,
  tgl_daftar DATE NOT NULL,
  PRIMARY KEY (id_pelanggan)
);
 
-- Tabel: mekanik
CREATE TABLE mekanik (
  id_mekanik INT NOT NULL AUTO_INCREMENT,
  nama_mekanik VARCHAR(100) NOT NULL,
  no_hp VARCHAR(15) NOT NULL,
  spesialisasi VARCHAR(100) NOT NULL,
  status_mekanik ENUM('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  PRIMARY KEY (id_mekanik)
);
 
-- Tabel: kategori_servis
CREATE TABLE kategori_servis (
  id_kategori INT NOT NULL AUTO_INCREMENT,
  nama_kategori VARCHAR(100) NOT NULL UNIQUE,
  deskripsi TEXT,
  PRIMARY KEY (id_kategori)
);
 
-- Tabel: supplier
CREATE TABLE supplier (
  id_supplier INT NOT NULL AUTO_INCREMENT,
  nama_supplier VARCHAR(100) NOT NULL,
  no_hp VARCHAR(15) NOT NULL,
  email VARCHAR(100) UNIQUE,
  alamat TEXT NOT NULL,
  PRIMARY KEY (id_supplier)
);
 
-- Tabel: kendaraan
CREATE TABLE kendaraan (
  id_kendaraan INT NOT NULL AUTO_INCREMENT,
  id_pelanggan INT NOT NULL,
  no_polisi VARCHAR(15) NOT NULL UNIQUE,
  merek VARCHAR(50) NOT NULL,
  tipe VARCHAR(50) NOT NULL,
  tahun YEAR NOT NULL,
  warna VARCHAR(30) NOT NULL,
  jenis_transmisi VARCHAR(20) NOT NULL,
  no_rangka VARCHAR(50) UNIQUE,
  no_mesin VARCHAR(50) UNIQUE,
  PRIMARY KEY (id_kendaraan),
  FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan)
    ON UPDATE CASCADE ON DELETE RESTRICT
);
 
-- Tabel: jasa_servis
CREATE TABLE jasa_servis (
  id_jasa INT NOT NULL AUTO_INCREMENT,
  id_kategori INT NOT NULL,
  nama_jasa VARCHAR(100) NOT NULL,
  deskripsi TEXT,
  biaya_jasa DECIMAL(12,2) NOT NULL CHECK (biaya_jasa >= 0),
  estimasi_menit INT NOT NULL CHECK (estimasi_menit > 0),
  PRIMARY KEY (id_jasa),
  FOREIGN KEY (id_kategori) REFERENCES kategori_servis(id_kategori)
    ON UPDATE CASCADE ON DELETE RESTRICT
);
 
-- Tabel: sparepart
CREATE TABLE sparepart (
  id_sparepart INT NOT NULL AUTO_INCREMENT,
  id_supplier INT NOT NULL,
  nama_sparepart VARCHAR(100) NOT NULL,
  merek VARCHAR(50) NOT NULL,
  satuan VARCHAR(20) NOT NULL,
  stok INT NOT NULL CHECK (stok >= 0),
  stok_minimum INT NOT NULL DEFAULT 5 CHECK (stok_minimum >= 0),
  harga_beli DECIMAL(12,2) NOT NULL CHECK (harga_beli >= 0),
  harga_jual DECIMAL(12,2) NOT NULL CHECK (harga_jual >= 0),
  PRIMARY KEY (id_sparepart),
  FOREIGN KEY (id_supplier) REFERENCES supplier(id_supplier)
    ON UPDATE CASCADE ON DELETE RESTRICT
);
 
-- Tabel: transaksi_servis
CREATE TABLE transaksi_servis (
  id_transaksi INT NOT NULL AUTO_INCREMENT,
  id_kendaraan INT NOT NULL,
  id_mekanik INT NOT NULL,
  tanggal_masuk DATETIME NOT NULL,
  tanggal_selesai DATETIME,
  keluhan TEXT NOT NULL,
  status_servis ENUM('menunggu','diproses','selesai','dibatalkan')
    NOT NULL DEFAULT 'menunggu',
  PRIMARY KEY (id_transaksi),
  FOREIGN KEY (id_kendaraan) REFERENCES kendaraan(id_kendaraan)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  FOREIGN KEY (id_mekanik) REFERENCES mekanik(id_mekanik)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CHECK (tanggal_selesai IS NULL OR tanggal_selesai >= tanggal_masuk)
);
 
-- Tabel: detail_jasa_servis
CREATE TABLE detail_jasa_servis (
  id_detail_jasa INT NOT NULL AUTO_INCREMENT,
  id_transaksi INT NOT NULL,
  id_jasa INT NOT NULL,
  biaya_jasa DECIMAL(12,2) NOT NULL CHECK (biaya_jasa >= 0),
  qty INT NOT NULL CHECK (qty > 0),
  subtotal_jasa DECIMAL(12,2) NOT NULL CHECK (subtotal_jasa >= 0),
  catatan TEXT,
  PRIMARY KEY (id_detail_jasa),
  UNIQUE (id_transaksi, id_jasa),
  FOREIGN KEY (id_transaksi) REFERENCES transaksi_servis(id_transaksi)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  FOREIGN KEY (id_jasa) REFERENCES jasa_servis(id_jasa)
    ON UPDATE CASCADE ON DELETE RESTRICT
);
 
-- Tabel: detail_sparepart
CREATE TABLE detail_sparepart (
  id_detail_sparepart INT NOT NULL AUTO_INCREMENT,
  id_transaksi INT NOT NULL,
  id_sparepart INT NOT NULL,
  jumlah INT NOT NULL CHECK (jumlah > 0),
  harga_satuan DECIMAL(12,2) NOT NULL CHECK (harga_satuan >= 0),
  subtotal_sparepart DECIMAL(12,2) NOT NULL CHECK (subtotal_sparepart >= 0),
  PRIMARY KEY (id_detail_sparepart),
  UNIQUE (id_transaksi, id_sparepart),
  FOREIGN KEY (id_transaksi) REFERENCES transaksi_servis(id_transaksi)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  FOREIGN KEY (id_sparepart) REFERENCES sparepart(id_sparepart)
    ON UPDATE CASCADE ON DELETE RESTRICT
);
 
-- Tabel: invoice
CREATE TABLE invoice (
  id_invoice INT NOT NULL AUTO_INCREMENT,
  id_transaksi INT NOT NULL UNIQUE,
  tanggal_invoice DATE NOT NULL,
  total_jasa DECIMAL(12,2) NOT NULL CHECK (total_jasa >= 0),
  total_sparepart DECIMAL(12,2) NOT NULL CHECK (total_sparepart >= 0),
  total_tagihan DECIMAL(12,2) NOT NULL CHECK (total_tagihan >= 0),
  status_invoice ENUM('belum_dibayar','sebagian','lunas')
    NOT NULL DEFAULT 'belum_dibayar',
  PRIMARY KEY (id_invoice),
  FOREIGN KEY (id_transaksi) REFERENCES transaksi_servis(id_transaksi)
    ON UPDATE CASCADE ON DELETE RESTRICT
);
 
-- Tabel: pembayaran
CREATE TABLE pembayaran (
  id_pembayaran INT NOT NULL AUTO_INCREMENT,
  id_invoice INT NOT NULL,
  tanggal_bayar DATE NOT NULL,
  metode_pembayaran VARCHAR(30) NOT NULL,
  jumlah_bayar DECIMAL(12,2) NOT NULL CHECK (jumlah_bayar > 0),
   status_pembayaran ENUM('belum_dibayar','sebagian','lunas'),
  PRIMARY KEY (id_pembayaran),
  FOREIGN KEY (id_invoice) REFERENCES invoice(id_invoice)
    ON UPDATE CASCADE ON DELETE RESTRICT
);
 
-- Indeks untuk performa query
CREATE INDEX idx_kendaraan_pelanggan ON kendaraan(id_pelanggan);
CREATE INDEX idx_transaksi_kendaraan ON transaksi_servis(id_kendaraan);
CREATE INDEX idx_transaksi_mekanik ON transaksi_servis(id_mekanik);
CREATE INDEX idx_detail_jasa_transaksi ON detail_jasa_servis(id_transaksi);
CREATE INDEX idx_detail_sp_transaksi ON detail_sparepart(id_transaksi);
CREATE INDEX idx_invoice_transaksi ON invoice(id_transaksi);
CREATE INDEX idx_pembayaran_invoice ON pembayaran(id_invoice);

