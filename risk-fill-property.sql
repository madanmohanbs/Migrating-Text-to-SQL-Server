UPDATE mig.MIGRN_RISK SET Property= RTRIM(left(Category,4)), Data=LTRIM(REPLACE(Category,'GRD',''))  
 where Category like'GRD%'


--HAS to run 5 times
WITH CTE AS (SELECT        Id, RowNum, Data, LAG(Data) OVER (ORDER BY Id, RowNum) AS LagData
FROM            mig.MIGRN_RISK where Property = 'GRD' )
     UPDATE       mig.MIGRN_RISK SET  Data = CTE.LagData
	
     FROM            mig.MIGRN_RISK INNER JOIN
                              CTE ON mig.MIGRN_RISK.Id = CTE.Id
     WHERE        (CTE.LagData IS NOT NULL) 
	 AND (mig.MIGRN_RISK.Property = 'GRD') 
	 AND (LEN(mig.MIGRN_RISK.Data) < LEN(CTE.LagData)) 
	 AND (mig.MIGRN_RISK.Data = '')
	 --AND (mig.MIGRN_RISK.RecNo = '?')
	 GO 5


