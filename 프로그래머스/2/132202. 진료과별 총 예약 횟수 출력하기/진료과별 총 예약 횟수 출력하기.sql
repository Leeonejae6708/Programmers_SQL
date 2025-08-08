-- 코드를 입력하세요
SELECT MCDP_CD 진료과코드, count(*) as "5월예약건수"
FROM APPOINTMENT
GROUP BY to_char(APNT_YMD, 'yyyy-mm'), MCDP_CD
HAVING to_char(APNT_YMD, 'yyyy-mm') = '2022-05'
ORDER BY 2, 1;