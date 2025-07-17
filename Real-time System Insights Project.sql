CREATE TABLE api_logs (
	timestamp TIMESTAMP,
	api_name TEXT,
	response_time INT,
	status_code INT,
	transcations_count INT,
	errors INT
);
copy api_logs FROM '/full/path/to/api_monitoring_logs.csv' DELIMITER ',' CSV HEADER;
SELECT*From api_logs;
--  Total Transactions per API per Hour
SELECT api_name, date_trunc('hour', timestamp) AS hour,
       SUM(transcations_count) AS total_transcations
FROM api_logs
GROUP BY api_name, hour
ORDER BY hour;
--Detect High Error Rate
SELECT timestamp, api_name, errors, response_time
FROM api_logs
WHERE errors >= 3 OR response_time > 1000
ORDER BY timestamp DESC;
--Rolling Error Count (Window Function)
SELECT *,
       SUM(errors) OVER (PARTITION BY api_name ORDER BY timestamp ROWS BETWEEN 5 PRECEDING AND CURRENT ROW) AS rolling_errors
FROM api_logs;