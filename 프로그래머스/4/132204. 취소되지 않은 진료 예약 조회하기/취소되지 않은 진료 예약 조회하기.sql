-- 코드를 입력하세요
SELECT
    a.apnt_no,
    p.pt_name,
    a.pt_no,
    a.mcdp_cd,
    d.dr_name,
    a.apnt_ymd
FROM appointment a, patient p, doctor d
WHERE a.pt_no = p.pt_no
AND a.mddr_id = d.dr_id
AND TO_CHAR(a.apnt_ymd, 'YYYY-MM-DD') = '2022-04-13'
AND a.apnt_cncl_yn = 'N'
AND a.mcdp_cd = 'CS'
ORDER BY 6 ASC;