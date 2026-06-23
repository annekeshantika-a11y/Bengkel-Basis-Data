DROP FUNCTION IF EXISTS fn_total_tagihan;
DELIMITER $$
CREATE FUNCTION fn_total_tagihan(p_id_transaksi INT)
RETURNS DECIMAL(12,2)
DETERMINISTIC
READS SQL DATA
BEGIN
  DECLARE v_total_jasa DECIMAL(12,2);
  DECLARE v_total_sp DECIMAL(12,2);
  
  SELECT COALESCE(SUM(subtotal_jasa),0)
  INTO v_total_jasa
  FROM detail_jasa_servis
  WHERE id_transaksi = p_id_transaksi;
  
  SELECT COALESCE(SUM(subtotal_sparepart), 0) INTO v_total_sp
  FROM detail_sparepart WHERE id_transaksi = p_id_transaksi;
  
  RETURN v_total_jasa + v_total_sp;
END $$
DELIMITER ;
 
-- Cara menggunakan:
SELECT fn_total_tagihan(1) AS total_tagihan_transaksi_1;
