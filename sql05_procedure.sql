USE bengkel_kendaraan;

DROP PROCEDURE IF EXISTS sp_buat_invoice;

DELIMITER //

CREATE PROCEDURE sp_buat_invoice(IN p_id INT)
BEGIN
    DECLARE v_jasa    DECIMAL(12,2) DEFAULT 0;
    DECLARE v_sp      DECIMAL(12,2) DEFAULT 0;
    DECLARE v_exist   INT DEFAULT 0;
    SELECT COUNT(*) INTO v_exist FROM invoice WHERE id_transaksi = p_id;
    IF v_exist > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invoice sudah ada.';
    ELSE
        SELECT COALESCE(SUM(subtotal_jasa),0) INTO v_jasa
        FROM detail_jasa_servis WHERE id_transaksi = p_id;
        SELECT COALESCE(SUM(subtotal_sparepart),0) INTO v_sp
        FROM detail_sparepart WHERE id_transaksi = p_id;
        INSERT INTO invoice
            (id_transaksi,tanggal_invoice,total_jasa,total_sparepart,status_invoice)
        VALUES
            (p_id, CURDATE(), v_jasa, v_sp, 'belum_dibayar');
        SELECT CONCAT('Invoice dibuat. Total: Rp ', FORMAT(v_jasa + v_sp,0)) AS pesan;
    END IF;
END //


DELIMITER ;
