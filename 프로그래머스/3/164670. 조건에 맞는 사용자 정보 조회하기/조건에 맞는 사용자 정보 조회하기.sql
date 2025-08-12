-- 코드를 입력하세요
SELECT 
    w.WRITER_ID, 
    u.NICKNAME, 
    (u.CITY||' '||u.STREET_ADDRESS1||' '||u.STREET_ADDRESS2) 전체주소,
    SUBSTR(TLNO, 1, 3) || '-' ||SUBSTR(TLNO, 4, 4) || '-' ||SUBSTR(TLNO, 8, 4) AS formatted_phone
FROM(SELECT WRITER_ID
     FROM USED_GOODS_BOARD
     GROUP BY WRITER_ID
     HAVING count(*) >= 3) w, USED_GOODS_USER u
WHERE w.WRITER_ID = u.USER_ID
ORDER BY 1 DESC;