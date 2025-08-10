-- 코드를 입력하세요
SELECT SUBSTR(product_code, 1, 2) AS category, COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY SUBSTR(product_code, 1, 2)
ORDER BY category;