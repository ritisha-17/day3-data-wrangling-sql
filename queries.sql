-- Query 1: Find top vendors by total payment amount

SELECT
    vendor_name,
    SUM(amount) AS total_payment
FROM vendor_payments
GROUP BY vendor_name
ORDER BY total_payment DESC;


-- Query 2: Find duplicate invoice numbers

SELECT
    invoice_number,
    COUNT(*) AS duplicate_count
FROM vendor_payments
GROUP BY invoice_number
HAVING COUNT(*) > 1;



-- Query 3: Find monthly payment totals

SELECT
    DATE_TRUNC('month', payment_date) AS payment_month,
    SUM(amount) AS monthly_total
FROM vendor_payments
GROUP BY payment_month
ORDER BY payment_month;


-- Query 4: Find payments made after invoice date

SELECT *
FROM vendor_payments
WHERE payment_date > invoice_date;



-- Query 5: Count total unique vendors

SELECT
    COUNT(DISTINCT vendor_id) AS total_vendors
FROM vendor_payments;



-- Query 6: Calculate total payment amount

SELECT
    SUM(amount) AS total_payment_amount
FROM vendor_payments;


-- Query 7: Find pending payments

SELECT *
FROM vendor_payments
WHERE status = 'Pending';



-- Query 8: Find highest payment amount

SELECT
    MAX(amount) AS highest_payment
FROM vendor_payments;



-- Query 9: Vendors with total payments above 5000

SELECT
    vendor_name,
    SUM(amount) AS total_payment
FROM vendor_payments
GROUP BY vendor_name
HAVING SUM(amount) > 5000;


-- Query 10: Calculate average payment amount

SELECT
    AVG(amount) AS average_payment
FROM vendor_payments;
