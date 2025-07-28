-- 코드를 입력하세요
SELECT BOOK_ID, to_char(PUBLISHED_DATE, 'yyyy-mm-dd')
FROM BOOK
WHERE to_char(PUBLISHED_DATE, 'yyyy') = '2021'
AND CATEGORY = '인문'
ORDER BY 2;