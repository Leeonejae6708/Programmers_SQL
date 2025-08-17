SELECT
    EXTRACT(MONTH FROM start_date) AS month,
    car_id,
    COUNT(*) AS records
FROM car_rental_company_rental_history
WHERE start_date >= TO_DATE('2022-08-01', 'yyyy-mm-dd')
AND start_date <  TO_DATE('2022-11-01', 'yyyy-mm-dd')
GROUP BY EXTRACT(MONTH FROM start_date), car_id
HAVING car_id IN (SELECT car_id
                  FROM car_rental_company_rental_history
                  WHERE start_date >= DATE '2022-08-01'
                  AND start_date <  DATE '2022-11-01'
                  GROUP BY car_id
                  HAVING COUNT(*) >= 5)
ORDER BY 1, 2 DESC;