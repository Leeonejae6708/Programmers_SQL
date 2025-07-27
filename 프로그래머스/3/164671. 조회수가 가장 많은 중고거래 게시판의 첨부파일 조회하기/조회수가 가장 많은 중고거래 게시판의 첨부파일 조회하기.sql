SELECT '/home/grep/src/'||t2.board_id||'/'||t2.FILE_ID||FILE_NAME||FILE_EXT FILE_PATH
FROM (SELECT *
      FROM USED_GOODS_BOARD 
      WHERE views IN (SELECT max(views)
      FROM USED_GOODS_BOARD)) t1, USED_GOODS_FILE t2
WHERE t1.board_id = t2.board_id
ORDER BY FILE_PATH DESC;