-- 코드를 입력하세요
SELECT 
    ORDER_ID, 
    PRODUCT_ID, 
    TO_CHAR(OUT_DATE, 'YYYY-MM-DD'),
    CASE
        WHEN out_date <= TO_DATE('2022-05-01', 'yyyy-mm-dd') THEN '출고완료'
        WHEN out_date IS NULL THEN '출고미정'
        ELSE '출고대기'
    END AS 출고상태
FROM FOOD_ORDER
ORDER BY 1;