-- 코드를 입력하세요
SELECT count(*)
FROM USER_INFO
WHERE to_char(JOINED, 'yyyy') = '2021'
AND AGE BETWEEN 20 AND 29;