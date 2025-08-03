SELECT 
    BOARD_ID, 
    WRITER_ID, 
    TITLE, 
    PRICE, 
    case
        WHEN STATUS = 'DONE' THEN '거래완료'
        WHEN STATUS = 'SALE' THEN '판매중'
        ELSE '예약중'
    END as STATUS
FROM USED_GOODS_BOARD
WHERE to_char(CREATED_DATE, 'yyyy-mm-dd') = '2022-10-05'
ORDER BY 1 DESC;