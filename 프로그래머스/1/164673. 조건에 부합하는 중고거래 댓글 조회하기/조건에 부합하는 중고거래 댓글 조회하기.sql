-- 코드를 입력하세요
SELECT 
    b.TITLE, 
    b.BOARD_ID, 
    r.REPLY_ID, 
    r.WRITER_ID, 
    r.CONTENTS, 
    to_char(r.CREATED_DATE, 'yyyy-mm-dd') CREATED_DATE
FROM USED_GOODS_BOARD b, USED_GOODS_REPLY r
WHERE b.BOARD_ID = r.BOARD_ID
AND to_char(b.CREATED_DATE, 'yyyy-mm-dd') LIKE '2022-10%'
ORDER BY r.CREATED_DATE, b.TITLE