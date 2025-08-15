SELECT 
    CAR_ID,
    CASE
        WHEN CAR_ID IN(SELECT car_id 
                        FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
                        WHERE start_date <= to_date('2022-10-16', 'yyyy-mm-dd')
                        AND END_DATE >= to_date('2022-10-16', 'yyyy-mm-dd')) THEN '대여중'
        ELSE '대여 가능'
    END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY 1 DESC;