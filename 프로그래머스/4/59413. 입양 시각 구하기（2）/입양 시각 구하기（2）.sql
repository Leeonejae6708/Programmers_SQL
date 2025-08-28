-- 코드를 입력하세요
SELECT 
    d.HOUR,     
    CASE
        WHEN a.COUNT IS NULL THEN 0
        ELSE a.COUNT
    END COUNT
FROM (SELECT level - 1 as HOUR
        FROM dual
        CONNECT BY level <= 24) d
LEFT JOIN (SELECT 
            TO_NUMBER(TO_CHAR(DATETIME, 'hh24')) HOUR, count(*) COUNT
            FROM ANIMAL_OUTS 
            GROUP BY TO_NUMBER(TO_CHAR(DATETIME, 'hh24'))
            ORDER BY 1) a
ON d.HOUR = a.HOUR
ORDER BY 1