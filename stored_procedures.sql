DELIMITER //
CREATE PROCEDURE TransferAmount(
  IN from_acc INT,
  IN to_acc INT,
  IN amount DECIMAL(10,2)
)
BEGIN
  START TRANSACTION;
    UPDATE Accounts SET Balance = Balance - amount WHERE AccountID = from_acc;
    UPDATE Accounts SET Balance = Balance + amount WHERE AccountID = to_acc;
    INSERT INTO Transactions(AccountID, Amount, Type)
    VALUES (from_acc, amount, 'Debit'), (to_acc, amount, 'Credit');
  COMMIT;
END //
DELIMITER ;
