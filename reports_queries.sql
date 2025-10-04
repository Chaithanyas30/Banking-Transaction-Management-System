-- Customer account report
SELECT c.Name, a.AccountType, a.Balance
FROM Customers c
JOIN Accounts a ON c.CustomerID = a.CustomerID;

-- Transaction log report
SELECT t.TransactionID, t.AccountID, t.Amount, t.Type, l.LogTime
FROM Transactions t
JOIN TransactionLogs l ON t.TransactionID = l.TransactionID;
