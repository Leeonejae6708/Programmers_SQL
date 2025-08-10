-- 코드를 입력하세요
select p.product_code, (p.PRICE * o.amount) SALES
FROM PRODUCT p, (SELECT PRODUCT_ID, SUM(SALES_AMOUNT) amount
                 FROM OFFLINE_SALE 
                 GROUP BY PRODUCT_ID) o
WHERE p.PRODUCT_ID = o.PRODUCT_ID
ORDER BY 2 DESC, 1;