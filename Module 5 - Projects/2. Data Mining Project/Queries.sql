-- CREATE TABLE online_retail (
--   InvoiceNo INT,
--   StockCode VARCHAR(10),
--   Description VARCHAR(255),
--   Quantity INT,
--   InvoiceDate DATETIME,
--   UnitPrice DOUBLE,
--   CustomerID BIGINT,
--   Country VARCHAR(50)
-- );

-- SELECT CustomerID, SUM(Quantity * UnitPrice) AS TotalOrderValue
-- FROM online_retail
-- GROUP BY CustomerID

-- SELECT CustomerID, COUNT(DISTINCT StockCode) AS UniqueProducts
-- FROM online_retail
-- GROUP BY CustomerID;

-- SELECT CustomerID
-- FROM online_retail
-- GROUP BY CustomerID
-- HAVING COUNT(InvoiceNo) = 1;

-- SELECT A.StockCode AS Product1, B.StockCode AS Product2, COUNT(*) AS TimesPurchasedTogether
-- FROM online_retail A
-- JOIN online_retail B ON A.InvoiceNo = B.InvoiceNo AND A.StockCode <> B.StockCode
-- GROUP BY A.StockCode, B.StockCode
-- ORDER BY TimesPurchasedTogether DESC;

-- SELECT CustomerID,
--   CASE
--     WHEN COUNT(InvoiceNo) > 20 THEN 'High Frequency'
--     WHEN COUNT(InvoiceNo) BETWEEN 10 AND 20 THEN 'Medium Frequency'
--     ELSE 'Low Frequency'
--   END AS PurchaseFrequency
-- FROM online_retail
-- GROUP BY CustomerID;

-- SELECT Country, AVG(TotalOrderValue) AS AvgOrderValue
-- FROM (
--   SELECT CustomerID, Country, SUM(Quantity * UnitPrice) AS TotalOrderValue
--   FROM online_retail
--   GROUP BY CustomerID, Country
-- ) AS CustomerOrders
-- GROUP BY Country;

-- SELECT CustomerID, MAX(InvoiceDate) AS LastPurchaseDate
-- FROM online_retail
-- GROUP BY CustomerID
-- HAVING MAX(InvoiceDate) < DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

-- SELECT A.StockCode AS Product1, B.StockCode AS Product2, COUNT(*) AS PurchaseCount
-- FROM online_retail A
-- JOIN online_retail B ON A.InvoiceNo = B.InvoiceNo AND A.StockCode <> B.StockCode
-- GROUP BY A.StockCode, B.StockCode
-- ORDER BY PurchaseCount DESC;

-- text to date 
-- UPDATE online_retail
-- SET InvoiceDate = STR_TO_DATE(InvoiceDate, '%m/%d/%Y %H:%i');
-- ALTER TABLE online_retail
-- MODIFY COLUMN InvoiceDate DATETIME;

SELECT YEAR(InvoiceDate) AS Year, MONTH(InvoiceDate) AS Month, SUM(Quantity * UnitPrice) AS MonthlySales
FROM online_retail
GROUP BY Year, Month
ORDER BY Year, Month;







