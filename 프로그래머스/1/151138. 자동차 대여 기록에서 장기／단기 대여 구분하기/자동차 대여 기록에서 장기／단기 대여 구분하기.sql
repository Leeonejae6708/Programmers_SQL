-- 코드를 입력하세요
SELECT  
    HISTORY_ID,
    CAR_ID,
    to_char(START_DATE, 'yyyy-mm-dd') AS START_DATE,
    to_char(END_DATE, 'yyyy-mm-dd') AS END_DATE,
    CASE
        WHEN END_DATE - START_DATE >= 29 THEN '장기 대여'
        ELSE '단기 대여'
    END RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE >= to_date('2022-09-01', 'yyyy-mm-dd')
AND START_DATE < to_date('2022-10-01', 'yyyy-mm-dd')
ORDER BY 1 DESC;