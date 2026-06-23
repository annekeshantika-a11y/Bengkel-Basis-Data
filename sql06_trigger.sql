DROP TRIGGER IF EXISTS trg_kurangi_stok;

DELIMITER $$

CREATE TRIGGER trg_kurangi_stok
BEFORE INSERT ON detail_sparepart
FOR EACH ROW
BEGIN
  DECLARE v_stok_sekarang INT;

  SELECT stok INTO v_stok_sekarang
  FROM sparepart WHERE id_sparepart = NEW.id_sparepart;

  IF v_stok_sekarang < NEW.jumlah THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Stok sparepart tidak mencukupi.';
  ELSE
    UPDATE sparepart
    SET stok = stok - NEW.jumlah
    WHERE id_sparepart = NEW.id_sparepart;
  END IF;
END $$

DELIMITER ;