WITH URN_CTE AS (
SELECT TOP 10 URNO, COUNT(*) AS records 
FROM            Mig.MIGRN_PATIENT AS P
WHERE RIGHT(p.recfindate,4) = '2016'
AND URNO <> ''
GROUP BY URNO
--HAVING URNO IS NOT NULL OR URNO <> '' -- AND COUNT(*)>=1

)
,
RECNO_CTE AS(
SELECT U.URNO, P.recnumber, P.recfindate FROM URN_CTE U 
INNER JOIN Mig.MIGRN_PATIENT P ON U.URNO=P.URNO
--WHERE U.URNO <> ''
--and RIGHT(refdate,4)='2016'
--ORDER BY U.URNO
)
--PATIENT
--SELECT P.* FROM RECNO_CTE C
--INNER JOIN [Mig].[MIGRN_PATIENT] AS P ON C.recnumber=P.recnumber

--OUTCOME
--SELECT O.* FROM RECNO_CTE C
--INNER JOIN [Mig].[MIGRN_OCOME] AS O ON C.recnumber=O.recnumber

--DHS
--SELECT D.* FROM RECNO_CTE C
--INNER JOIN [Mig].[MIGRN_DHS] AS D ON C.recnumber=D.recnumber

--RISK
--SELECT R.* FROM RECNO_CTE C
--INNER JOIN [Mig].[MIGRN_RISK] AS R ON C.recnumber=R.RecNo

--TRIAGE
SELECT T.* FROM RECNO_CTE C
INNER JOIN [Mig].[MIGRN_TRIAGE] AS T ON C.recnumber=T.RecNo
