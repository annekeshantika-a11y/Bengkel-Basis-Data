USE bengkel_kendaraan;

DROP PROCEDURE IF EXISTS sp_buat_invoice;
DROP TRIGGER IF EXISTS trg_kurangi_stok;
DROP FUNCTION IF EXISTS fn_total_tagihan;

DELIMITER //

CREATE PROCEDURE sp_buat_invoice(IN p_id INT)
BEGIN
    DECLARE v_jasa    DECIMAL(12,2) DEFAULT 0;
    DECLARE v_sp      DECIMAL(12,2) DEFAULT 0;
    DECLARE v_total   DECIMAL(12,2) DEFAULT 0;
    DECLARE v_exist   INT DEFAULT 0;
    SELECT COUNT(*) INTO v_exist FROM invoice WHERE id_transaksi = p_id;
    IF v_exist > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invoice sudah ada.';
    ELSE
        SELECT COALESCE(SUM(biaya_jasa),0) INTO v_jasa
        FROM detail_jasa_servis WHERE id_transaksi = p_id;
        SELECT COALESCE(SUM(subtotal_sparepart),0) INTO v_sp
        FROM detail_sparepart WHERE id_transaksi = p_id;
        SET v_total = v_jasa + v_sp;
        INSERT INTO invoice
            (id_transaksi,tanggal_invoice,total_jasa,total_sparepart,total_tagihan,status_invoice)
        VALUES
            (p_id, CURDATE(), v_jasa, v_sp, v_total, 'belum_dibayar');
        SELECT CONCAT('Invoice dibuat. Total: Rp ', FORMAT(v_total,0)) AS pesan;
    END IF;
END //

CREATE TRIGGER trg_kurangi_stok
AFTER INSERT ON detail_sparepart
FOR EACH ROW
BEGIN
    DECLARE v_stok INT;
    SELECT stok INTO v_stok FROM sparepart WHERE id_sparepart = NEW.id_sparepart;
    IF v_stok < NEW.jumlah THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stok tidak cukup.';
    ELSE
        UPDATE sparepart SET stok = stok - NEW.jumlah
        WHERE id_sparepart = NEW.id_sparepart;
    END IF;
END //

CREATE FUNCTION fn_total_tagihan(p_id INT)
RETURNS DECIMAL(12,2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE v_jasa DECIMAL(12,2);
    DECLARE v_sp   DECIMAL(12,2);
    SELECT COALESCE(SUM(biaya_jasa),0) INTO v_jasa
    FROM detail_jasa_servis WHERE id_transaksi = p_id;
    SELECT COALESCE(SUM(subtotal_sparepart),0) INTO v_sp
    FROM detail_sparepart WHERE id_transaksi = p_id;
    RETURN v_jasa + v_sp;
END //

DELIMITER ;

-- Test:
-- CALL sp_buat_invoice(24);
-- SELECT fn_total_tagihan(1);