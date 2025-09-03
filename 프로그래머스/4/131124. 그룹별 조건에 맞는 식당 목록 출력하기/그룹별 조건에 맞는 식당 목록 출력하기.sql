-- 코드를 입력하세요
SELECT m.MEMBER_NAME, r.REVIEW_TEXT, TO_CHAR(r.REVIEW_DATE, 'yyyy-mm-dd') REVIEW_DATE
FROM MEMBER_PROFILE m, REST_REVIEW r
WHERE m.MEMBER_ID = r.MEMBER_ID
AND m.MEMBER_ID IN (SELECT MEMBER_ID
                    FROM (SELECT 
                            MEMBER_ID, 
                            count(*),
                            DENSE_RANK() over(order by count(*) desc) 리뷰수
                          FROM REST_REVIEW 
                          GROUP BY MEMBER_ID)
                    WHERE 리뷰수 = 1)
ORDER BY 3, 2;
    