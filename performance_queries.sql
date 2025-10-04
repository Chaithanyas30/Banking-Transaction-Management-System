-- Top customers by total balance
SELECT c.Name, SUM(a.Balance) AS TotalBalance
FROM Customers c
JOIN Accounts a ON c.CustomerID = a.CustomerID
GROUP BY c.Name
ORDER BY TotalBalance DESC;

-- Daily transaction summary
SELECT DATE(TransactionDate) AS Date, COUNT(*) AS TransactionCount, SUM(Amount) AS TotalAmount
FROM Transactions
GROUP BY DATE(TransactionDate);
