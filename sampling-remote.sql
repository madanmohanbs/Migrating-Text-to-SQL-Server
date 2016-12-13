
--SET IDENTITY_INSERT [mig].[MIGRN_PATIENT] ON;
WITH SERVER_PATIENT AS(
SELECT  *  FROM OPENDATASOURCE('SQLNCLI',  'Data Source=.\sqlexpress; Integrated Security=SSPI' ).[d8view_staging].[mig].[migrn_PATIENT]  
),
SERVER_OCOME AS(
SELECT  *  FROM OPENDATASOURCE('SQLNCLI',  'Data Source=.\sqlexpress; Integrated Security=SSPI' ).[d8view_staging].[mig].[migrn_OCOME]  
),
SERVER_DHS AS(
SELECT  *  FROM OPENDATASOURCE('SQLNCLI',  'Data Source=.\sqlexpress; Integrated Security=SSPI' ).[d8view_staging].[mig].[migrn_DHS]  
),
SERVER_RISK AS(
SELECT  *  FROM OPENDATASOURCE('SQLNCLI',  'Data Source=.\sqlexpress; Integrated Security=SSPI' ).[d8view_staging].[mig].[migrn_RISK]  
),
SERVER_TRIAGE AS(
SELECT  *  FROM OPENDATASOURCE('SQLNCLI',  'Data Source=.\sqlexpress; Integrated Security=SSPI' ).[d8view_staging].[mig].[migrn_TRIAGE]  
),
URN_CTE AS (
SELECT TOP 10 URNO, COUNT(*) AS records 
FROM            SERVER_PATIENT AS P
WHERE RIGHT(p.recfindate,4) = '2016'
AND URNO <> ''
GROUP BY URNO
--HAVING URNO IS NOT NULL OR URNO <> '' -- AND COUNT(*)>=1
)
--RECNO
--SELECT * FROM URN_CTE
,
RECNO_CTE AS(
SELECT U.URNO, P.recnumber, P.recfindate FROM URN_CTE U 
INNER JOIN SERVER_PATIENT P ON U.URNO=P.URNO
--WHERE U.URNO <> ''
--and RIGHT(refdate,4)='2016'
--ORDER BY U.URNO
)

--PATIENT
--INSERT INTO [mig].[MIGRN_PATIENT]
--SELECT P.* FROM RECNO_CTE C
--INNER JOIN SERVER_PATIENT AS P ON C.recnumber=P.recnumber

--OUTCOME
--INSERT INTO  [Mig].[MIGRN_OCOME]
--SELECT O.* FROM RECNO_CTE C
--INNER JOIN SERVER_OCOME AS O ON C.recnumber=O.recnumber

--DHS
--INSERT INTO [Mig].[MIGRN_DHS]
--SELECT D.* FROM RECNO_CTE C
--INNER JOIN SERVER_DHS AS D ON C.recnumber=D.recnumber

--RISK
--INSERT INTO [Mig].[MIGRN_RISK]
--SELECT R.* FROM RECNO_CTE C
--INNER JOIN SERVER_RISK AS R ON C.recnumber=R.RecNo

--TRIAGE
--INSERT INTO [Mig].[MIGRN_TRIAGE]
--SELECT T.* FROM RECNO_CTE C
--INNER JOIN SERVER_TRIAGE AS T ON C.recnumber=T.RecNo
