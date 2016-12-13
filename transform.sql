--IDENTITY_INSERT is ON
WITH GROUP_TRIAGE_CTE AS (

	SELECT        RecNo, Property, Count(*) AS [Num],
	STUFF	((	 SELECT ', [' + Data +'] ' FROM  mig.MIGRN_TRIAGE AS I
			 WHERE I.RecNo=O.RecNo AND I.Property=O.Property 
			 FOR XML PATH('')
		 ),1,1,'') Csv
	FROM Mig.MIGRN_TRIAGE AS O
	GROUP BY RecNo, Property
	--ORDER BY RecNo
)
insert into [mig].[migrn_triage_group](RecNo, Property, Num, Csv)
select * from  group_triage_cte
;

WITH PIVOT_TRIAGE AS(
	SELECT C.* FROM ( SELECT distinct recnumber FROM [mig].[migrn_patient]) AS D
	CROSS APPLY(
	select X.* from   (select RecNo, Property, Csv from [mig].[migrn_triage_group] where RecNo=D.recnumber)  as t
	PIVOT( 
		Max( Csv)
		for [Property] in ([KID],[PRO],[MED],[REQ],[CMI],[ALT],[CRI],[WAR],[AGY],[CON],[INV],[PAS],[TRI],[DET],[OUT],[CNO],[SAV] )
		) AS X
		) AS C
)
insert into [mig].[migrn_triage_pivot]([recno],[kid],[pro],[med],[req],[cmi],[alt],[cri],[war],[agy],[con],[inv],[pas],[tri],[det],[out],[cno],[sav])
select  * from  pivot_triage
;
----GRID----------
WITH RISK_GRID_SELECT_AS AS(
SELECT RecNo, Data,[Absent] as '0-Absent',   Low as '1-Low', Medium as '2-Medium', High as '3-High'
FROM            Mig.MIGRN_RISK where property='GRD'
)
,
UNPIVOT_RISK_GRID_CTE as(
select U.RecNo, U.Data, U.RiskName from RISK_GRID_SELECT_AS
UNPIVOT( 
	RiskLevel for RiskName in ([0-Absent],[1-Low],[2-Medium],[3-High]) 
	)as U
)
,
PIVOT_RISK_GRID AS(
select U2.* from UNPIVOT_RISK_GRID_CTE
PIVOT( 
	max(RiskName) 
	for Data 
	in ( [Suicidality], [Deliberate Self Harm], [Aggression], [Risk to Others], [Avoiding Contact], [Substance Abuse], [Inapprop.Sexual Behaviour], [Cognitive Impairment]	, [Serious Medical Condition], [Level of Non-compliance]	, [Cultural Risk], [Vulnerability to Exploitation], [Falls], [Other (specify)]	, [Referrers Risk Assessment], [OVERALL RISK RATING]	)
	)	AS U2
)
insert into [mig].[migrn_risk_grid_pivot]([recno] ,[suicidality] ,[deliberate self harm] ,[aggression] ,[risk to others] ,[avoiding contact] ,[substance abuse] ,[inapprop.sexual behaviour] ,[cognitive impairment] ,[serious medical condition] ,[level of non-compliance] ,[cultural risk] ,[vulnerability to exploitation] ,[falls], [other (specify)] ,[referrers risk assessment] ,[overall risk rating])
select  * from pivot_risk_grid
;
----GRID COMMENTS
WITH GROUP_RISK_GRD_COMMENTS AS(

	SELECT        RecNo, Data, Count([Description]) as Num,
	--MAX(Description) AS [Desc]
	STUFF(
	(SELECT        ', "' +[Description] +'" : "'
				+ case when I.Low='a' then 'low' when I.Medium='a' then 'medium' when I.High='a' then 'high' end +'"'
	 FROM            Mig.MIGRN_RISK AS I
	 WHERE I.RecNo=O.RecNo AND I.Data=O.Data 
	 AND I.Property='GRD'
	 --AND( I.Low='a' OR I.Medium='a' OR High='a')

	FOR XML PATH('')) 
	,1,2,'')Csv
	FROM            Mig.MIGRN_RISK AS O
	WHERE O.Property='GRD'
	GROUP BY RecNo, Data
	--ORDER BY RecNo, Data
)
insert into [mig].[migrn_risk_group](RecNo, Data, Num, Csv)
select * from group_risk_grd_comments
;
WITH PIVOT_RISK_GRD_COMMENT AS(
SELECT C.* FROM ( SELECT distinct recnumber FROM [mig].[migrn_patient]) AS D
CROSS APPLY(
select P.* from (select RecNo, Data +' Rx' as Data, '{ '+Csv+' }'as Csv  from [mig].[migrn_risk_group_comments]  where RecNo=D.recnumber)as S
PIVOT( 
	max(Csv)
	for Data 
	in ( [Suicidality Rx], [Deliberate Self Harm Rx], [Aggression Rx], [Risk to Others Rx], [Avoiding Contact Rx], [Substance Abuse Rx], [Inapprop.Sexual Behaviour Rx], [Cognitive Impairment Rx]	, [Serious Medical Condition Rx], [Level of Non-compliance Rx]	, [Cultural Risk Rx], [Vulnerability to Exploitation Rx], [Falls Rx], [Other (specify) Rx]	, [Referrers Risk Assessment Rx], [OVERALL RISK RATING Rx]	)
	)	AS P
	) AS C
)
insert into [mig].[migrn_risk_grid_pivot_comments]
([RecNo] ,[Suicidality Rx] ,[Deliberate Self Harm Rx] ,[Aggression Rx] ,[Risk to Others Rx] ,[Avoiding Contact Rx] ,[Substance Abuse Rx] ,[Inapprop.Sexual Behaviour Rx] ,[Cognitive Impairment Rx] ,[Serious Medical Condition Rx] ,[Level of Non-compliance Rx] ,[Cultural Risk Rx] ,[Vulnerability to Exploitation Rx] ,[Falls Rx], [Other (specify) Rx] ,[Referrers Risk Assessment Rx] ,[OVERALL RISK RATING Rx])
select  * from pivot_risk_grd_comment
;
WITH PIVOT_RISK_NON_GRD AS(
	--SELECT C.* FROM ( SELECT distinct recnumber FROM [mig].[migrn_patient]) AS D
--CROSS APPLY(
	SELECT P.* FROM   (select RecNo, Property,Data from mig.MIGRN_RISK As r where r.Property<> 'GRD')AS S  --and RecNo=D.recnumber
	PIVOT( 
		Max( Data)
		for [Property] in ([COM],[FOR],[EPY],[EPN],[EPP],[HIN],[HIY])
		) AS P
	--	)AS C
)
insert into [mig].[migrn_risk_non_grid_pivot]([RecNo],[COM],[FOR],[EPY],[EPN],[EPP],[HIN],[HIY])
select * from PIVOT_RISK_NON_GRD
;
--PIVOT_RISK_GRD_NIL AS(
--select P.* from (select RecNo, Data+' Nil'as Data, NilInfo  from [Mig].[MIGRN_RISK])as S
--PIVOT( 
--	max(NilInfo)
--	for Data 
--	in ( [Suicidality Nil], [Deliberate Self Harm Nil], [Aggression Nil], [Risk to Others Nil], [Avoiding Contact Nil], [Substance Abuse Nil], [Inapprop.Sexual Behaviour Nil], [Cognitive Impairment Nil]	, [Serious Medical Condition Nil], [Level of Non-compliance Nil]	, [Cultural Risk Nil], [Vulnerability to Exploitation Nil], [Falls Nil], [Other (specify) Nil]	, [Referrers Risk Assessment Nil], [OVERALL RISK RATING Nil]	)
--	)	AS P
--),

WITH MIGRN_ALL_VIEW AS(

SELECT	P.[recnumber],	[delflag],	[reftype],	[recfin],	[recfindate],	[unregloc],	[locrec],	P.[URNO],	[lname],	[FNAME],	[dob],	[Male],	[Female],	[marital],	[Address],	[town],	[state],	[patphone],	[gp],	[gpphone],	[abo],	[tsi],	[cob],	[nation],	[flang],	[interpyes],	[interpno],	[parent],	[nok],	[nokrelat],	[nokaddr],	[noktown],	[nokstate],	[nokphone],	[gpawareyes],	[gpawareno],	[clientawareyes],	[clientawareno],	[refdate],	[reftime],	[refname],	
[reforigin],	[refrelat],	[refcontact],	[refmedium],	[amhsreg],	[respcat],	[resptxt],	[pastcon],	[rapnosearch],	[rapnotfound],	[rapfound],	[rapdx],	[accserv],	[notaccserv],	[serv],	[oth],	[faxyes],	[faxno],	[faxdate],	[discussyes],	[discussno],	[discusstime],	[triclin],	[contdur],	[signoff],	[signoffdate],	
[prog],	[medium],	[locat],	[servrecpt],	[servresp],	[servdate],	[servtime],	
[KID],	[PRO],	[MED],	[REQ],	[CMI],	[ALT],	[CRI],	[WAR],	[AGY],	[CON],	[INV],	[PAS],	[TRI],	[DET],	[OUT],	[CNO],	[SAV],	
[COM],	[FOR],	[EPY],	[EPN],	[EPP],	[HIN],	[HIY],
[Suicidality],	[Deliberate Self Harm],	[Aggression],	[Risk to Others],	[Avoiding Contact],	[Substance Abuse],	[Inapprop.Sexual Behaviour],	[Cognitive Impairment],	[Serious Medical Condition],	[Level of Non-compliance],	[Cultural Risk],	[Vulnerability to Exploitation],	[Falls],	[Other (specify)],	[Referrers Risk Assessment],	[OVERALL RISK RATING],
[Suicidality Rx],	[Deliberate Self Harm Rx],	[Aggression Rx],	[Risk to Others Rx],	[Avoiding Contact Rx],	[Substance Abuse Rx],	[Inapprop.Sexual Behaviour Rx],	[Cognitive Impairment Rx],	[Serious Medical Condition Rx],	[Level of Non-compliance Rx],	[Cultural Risk Rx],	[Vulnerability to Exploitation Rx],	[Falls Rx],	[Other (specify) Rx],	[Referrers Risk Assessment Rx],	[OVERALL RISK RATING Rx]
FROM   Mig.MIGRN_PATIENT AS P 
LEFT OUTER JOIN Mig.MIGRN_OCOME AS O ON P.recnumber = O.recnumber 
LEFT OUTER JOIN Mig.MIGRN_DHS AS D ON P.recnumber = D.recnumber
LEFT OUTER JOIN [mig].[migrn_triage_pivot] T   ON T.RecNo = P.recnumber
LEFT OUTER  JOIN [mig].[migrn_risk_non_grid_pivot] N ON N.RecNo=P.recnumber
LEFT OUTER JOIN [mig].[migrn_risk_grid_pivot] R ON R.RecNo=P.recnumber
LEFT OUTER JOIN [mig].[migrn_risk_grid_pivot_comments] C ON C.RecNo=P.recnumber
)
--select  top 10000 * from  MIGRN_ALL_VIEW
INSERT INTO Mig.MIGRN_ALL 
(
[recnumber],	[delflag],	[reftype],	[recfin],	[recfindate],	[unregloc],	[locrec],	P.[URNO],	[lname],	[FNAME],	[dob],	[Male],	[Female],	[marital],	[Address],	[town],	[state],	[patphone],	[gp],	[gpphone],	[abo],	[tsi],	[cob],	[nation],	[flang],	[interpyes],	[interpno],	[parent],	[nok],	[nokrelat],	[nokaddr],	[noktown],	[nokstate],	[nokphone],	[gpawareyes],	[gpawareno],	[clientawareyes],	[clientawareno],	[refdate],	[reftime],	[refname],	
[reforigin],	[refrelat],	[refcontact],	[refmedium],	[amhsreg],	[respcat],	[resptxt],	[pastcon],	[rapnosearch],	[rapnotfound],	[rapfound],	[rapdx],	[accserv],	[notaccserv],	[serv],	[oth],	[faxyes],	[faxno],	[faxdate],	[discussyes],	[discussno],	[discusstime],	[triclin],	[contdur],	[signoff],	[signoffdate],	
[prog],	[medium],	[locat],	[servrecpt],	[servresp],	[servdate],	[servtime],	
[KID],	[PRO],	[MED],	[REQ],	[CMI],	[ALT],	[CRI],	[WAR],	[AGY],	[CON],	[INV],	[PAS],	[TRI],	[DET],	[OUT],	[CNO],	[SAV],	
[COM],	[FOR],	[EPY],	[EPN],	[EPP],	[HIN],	[HIY],
[Suicidality],	[Deliberate Self Harm],	[Aggression],	[Risk to Others],	[Avoiding Contact],	[Substance Abuse],	[Inapprop.Sexual Behaviour],	[Cognitive Impairment],	[Serious Medical Condition],	[Level of Non-compliance],	[Cultural Risk],	[Vulnerability to Exploitation],	[Falls],	[Other (specify)],	[Referrers Risk Assessment],	[OVERALL RISK RATING],
[Suicidality Rx],	[Deliberate Self Harm Rx],	[Aggression Rx],	[Risk to Others Rx],	[Avoiding Contact Rx],	[Substance Abuse Rx],	[Inapprop.Sexual Behaviour Rx],	[Cognitive Impairment Rx],	[Serious Medical Condition Rx],	[Level of Non-compliance Rx],	[Cultural Risk Rx],	[Vulnerability to Exploitation Rx],	[Falls Rx],	[Other (specify) Rx],	[Referrers Risk Assessment Rx],	[OVERALL RISK RATING Rx]
)

OUTPUT inserted.recnumber
SELECT --TOP(1000) 
[recnumber],	[delflag],	[reftype],	[recfin], TRY_CONVERT(DATE,	[recfindate],103  ) AS recfindate,	[unregloc],	[locrec],	[URNO],	[lname],	[FNAME],	TRY_CONVERT(DATE,[dob],103  ) AS dob,	[Male],	[Female],	[marital],	[Address],	[town],	[state],	[patphone],	[gp],	[gpphone],	[abo],	[tsi],	[cob],	[nation],	[flang],	[interpyes],	[interpno],	[parent],	[nok],	[nokrelat],	[nokaddr],	[noktown],	[nokstate],	[nokphone],	[gpawareyes],	[gpawareno],	[clientawareyes],	[clientawareno],	TRY_CONVERT(DATE,[refdate] ,103 ) AS [refdate],	TRY_CONVERT(TIME,[reftime] ) AS [reftime],	[refname],	
[reforigin],	[refrelat],	[refcontact],	[refmedium],	[amhsreg],	[respcat],	[resptxt],	[pastcon],	[rapnosearch],	[rapnotfound],	[rapfound],	[rapdx],	[accserv],	[notaccserv],	[serv],	[oth],	[faxyes],	[faxno],	TRY_CONVERT(DATE, [faxdate] ,103) AS[faxdate] ,	[discussyes],	[discussno],	TRY_CONVERT(TIME,[discusstime]) AS [discusstime],	[triclin],	[contdur],	[signoff],	TRY_CONVERT(DATE,[signoffdate] , 103) AS [signoffdate],	
[prog],	[medium],	[locat],	[servrecpt],	[servresp], TRY_CONVERT(DATE,[servdate] ,103 )AS [servdate],	TRY_CONVERT(TIME,[servtime]  ) AS [servtime],	
[KID],	[PRO],	[MED],	[REQ],	[CMI],	[ALT],	[CRI],	[WAR],	[AGY],	[CON],	[INV],	[PAS],	[TRI],	[DET],	[OUT],	[CNO],	[SAV],	
[COM],	[FOR],	[EPY],	[EPN],	[EPP],	[HIN],	[HIY],
[Suicidality],	[Deliberate Self Harm],	[Aggression],	[Risk to Others],	[Avoiding Contact],	[Substance Abuse],	[Inapprop.Sexual Behaviour],	[Cognitive Impairment],	[Serious Medical Condition],	[Level of Non-compliance],	[Cultural Risk],	[Vulnerability to Exploitation],	[Falls],	[Other (specify)],	[Referrers Risk Assessment],	[OVERALL RISK RATING],
[Suicidality Rx],	[Deliberate Self Harm Rx],	[Aggression Rx],	[Risk to Others Rx],	[Avoiding Contact Rx],	[Substance Abuse Rx],	[Inapprop.Sexual Behaviour Rx],	[Cognitive Impairment Rx],	[Serious Medical Condition Rx],	[Level of Non-compliance Rx],	[Cultural Risk Rx],	[Vulnerability to Exploitation Rx],	[Falls Rx],	[Other (specify) Rx],	[Referrers Risk Assessment Rx],	[OVERALL RISK RATING Rx]

 FROM MIGRN_ALL_VIEW

--SELECT top 10000 * FROM MIGRN_ALL_VIEW

--Could not allocate space for object 'dbo.WORKFILE GROUP large record overflow storage:  140742236635136' in database 'tempdb' because the 'PRIMARY' filegroup is full. Create disk space by deleting unneeded files, dropping objects in the filegroup, adding additional files to the filegroup, or setting autogrowth on for existing files in the filegroup.
