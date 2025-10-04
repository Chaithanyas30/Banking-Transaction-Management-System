DELIMITER //
CREATE TRIGGER after_transaction_insert
AFTER INSERT ON Transactions
FOR EACH ROW
BEGIN
  INSERT INTO TransactionLogs (TransactionID, LogTime)
  VALUES (NEW.TransactionID, NOW());
END //
DELIMITER ;
