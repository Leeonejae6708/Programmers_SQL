-- 코드를 입력하세요
SELECT member_id, member_name, gender, to_char(date_of_birth, 'YYYY-MM-DD') DATE_OF_BIRTH
FROM MEMBER_PROFILE 
WHERE to_char(date_of_birth, 'mm') = '03'
AND gender = 'W'
AND tlno IS NOT NULL
ORDER BY member_id;