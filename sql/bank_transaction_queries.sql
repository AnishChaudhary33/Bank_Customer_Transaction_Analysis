CREATE TABLE bank_transaction(
	transaction_id VARCHAR(50),
	account_id VARCHAR(50),
	transaction_amount NUMERIC,
	transaction_date TIMESTAMP,
	transaction_type VARCHAR(50),
	location VARCHAR(50),
	device_id VARCHAR(50),
	ip_address VARCHAR(50),
	merchant_id VARCHAR(50),
	channel VARCHAR(50),
	customer_age INT,
	customer_occupation VARCHAR(50),
	transaction_duration INT,
	login_attempts INT,
	account_balance NUMERIC,
	previous_transaction_date TIMESTAMP
);

SELECT* FROM bank_transaction
LIMIT 10

-- Total Transaction Amount
SELECT SUM(transaction_amount) AS total_amount
FROM bank_transaction;

--Monthly Transaction Trend
SELECT 
	DATE_TRUNC('month',transaction_date) as month,
	SUM(transaction_amount) as total_amount
FROM bank_transaction
GROUP BY month
ORDER by total_amount desc;

--High value customer
SELECT account_id as customer,
SUM(transaction_amount) as total_amount
FROM bank_transaction
GROUP by customer
ORDER by total_amount DESC
LIMIT 10;

--Transaction by age_group 
SELECT customer_age,
COUNT(transaction_id) as total_transcation
FROM bank_transaction
GROUP by customer_age
ORDER by customer_age ASC;

-- Total Number of Transactions
SELECT COUNT(*) FROM bank_transaction

-- Total Transaction Amount
SELECT SUM(transaction_amount) as total_amount
FROM bank_transaction

-- Total Number of Customers
SELECT COUNT(DISTINCT account_id) as total_customers
FROM bank_transaction

-- Transaction Count by Transaction Type
SELECT transaction_type,
	COUNT(*) as total_transaction
FROM bank_transaction
GROUP BY transaction_type


-- Transactions by location
SELECT location,
COUNT(*) as transaction_count
FROM bank_transaction
GROUP by location
ORDER BY transaction_count DESC;


-- Average Transaction Amount per Customer
SELECT account_id,
  ROUND(AVG(transaction_amount),2) avg_transaction_amount
FROM bank_transaction
GROUP BY account_id
ORDER BY avg_transaction_amount DESC;

-- Age-Wise Transaction Analysis
SELECT customer_age,
SUM(transaction_amount) as total_amount
FROM bank_transaction
GROUP BY customer_age
ORDER BY customer_age;



-- Find total transaction amount per month
SELECT
	TO_CHAR(transaction_date,'month') as month,
	SUM (transaction_amount) as total_spent
from bank_transaction
GROUP BY month
ORDER BY total_spent DESC;


--Identify customers with more than 10 transactions
SELECT account_id,
COUNT(transaction_id) as transaction_count
FROM bank_transaction
GROUP BY account_id
HAVING COUNT(transaction_id)>10;



-- Rank customers based on total transaction amount
SELECT
	account_id,
	SUM(transaction_amount) as total_transaction,
	RANK() OVER (ORDER BY SUM(transaction_amount) DESC) as rank
FROM bank_transaction
GROUP BY account_id




-- Find customers whose total transaction amount is above the overall average.
WITH customer_values AS (
	SELECT
		account_id,
		SUM(transaction_amount) as total_transaction   
		from bank_transaction
	GROUP BY account_id
)
SELECT * FROM customer_values
	WHERE total_transaction > (SELECT AVG(total_transaction) FROM customer_values);

- Total Transaction Amount
- monthly transaction Trend
- High value Customers
- Transaction by Age Group
- Transaction Count by Transaction Type
- Average Transaction Amount per Customer
- Age wise Transactional Analysis
- Identify customers with more than 10 transactions
- Rank customers based on total transaction amount
