

INSERT INTO [dbo].[PatientEntities]
(
	   PatientId
	  ,[URNo]
      ,[FirstName]
      ,[LastName]
      ,[Sex]
      ,[DOB]
      ,[MHANo]
      ,[MiddleName]
      ,[MaritalStatus]
      ,[Address]
      ,[Town]
      ,[PostCode]
      ,[State]
      ,[HomePhone]
      ,[WorkPhone]
      ,[MobilePhone]
      ,[Email]
      ,[GPName]
      ,[GPPhone]
      ,[GPFax]
      ,[CountryOfBirth]
      ,[Nationality]
      ,[SpokenLanguage]
      ,[ParentalStatus]
      ,[NOK]
      ,[NOKRelationship]
      ,[NOKAddress]
      ,[NOKTown]
      ,[NOKState]
      ,[NOKHomePhone]
      ,[NOKWorkPhone]
      ,[NOKMobilePhone]
	  ,[Children]
	  ,[LeadClinician]
	  ,[Psychiatrist]
	  ,[MigratedPatients]
	  ,[CreatedBy]
	  ,[ATSIStatus]
	  ,[InterpreterRequired]


)

SELECT  X.* FROM (  select distinct URNO  FROM [Mig].[MIGRN_PATIENT] 
				   where urno<>''	
) as P
CROSS APPLY(
SELECT TOP 1
NEWID() as PatientId,
URNO ,
FNAME AS  [FirstName] ,
lname AS  [LastName] ,
case when Male=1 then 'Male' else 'Female' end AS  [Sex] ,
 TRY_CONVERT(DATETIME,	[dob],103  )  AS  [DOB] ,
URNO AS  [MHANo],
null as  [MiddleName],
marital AS  [MaritalStatus] ,
[Address] AS  [Address] ,
case when ISNUMERIC(RIGHT(rtrim(town),4))=1 and LEN(town)> 4 then substring(rtrim(town),1,LEN(RTRIM(town))-4) else [town] end AS  [Town] ,
case when ISNUMERIC(RIGHT(rtrim(town),4))=1 and LEN(town)> 4 then RIGHT(rtrim(town),4) else '' end AS [Postcode],
upper([state]) AS  [State] ,
patphone AS [HomePhone] , 
patphone AS  [WorkPhone],
null AS [MobilePhone] ,
null as Email,
gp AS  [GPName] ,
gpphone AS  [GPPhone] ,
null as [GPFax],
cob AS  [CountryOfBirth] ,
nation AS  [Nationality] ,
flang AS  [SpokenLanguage] ,
parent AS  [ParentalStatus] ,
nok AS  [NOK] ,
nokrelat AS  [NOKRelationship] ,
nokaddr AS  [NOKAddress] ,
noktown AS  [NOKTown] ,
nokstate AS  [NOKState] ,
nokphone AS  [NOKHomePhone] ,
null AS [NOKWorkPhone],
null AS [NOKMobilePhone],
[KID] AS children,
triclin AS  [LeadClinician],
signoff AS [Psychiatrist],
'Migrated' AS [MigratedPatients],
[SAV]	  AS [CreatedBy],
case when abo=1 and tsi=0 then 'Aboriginal' when abo=0 and tsi=1 then 'Torres Strait Islander' when abo=1 and tsi=1 then 'BOTH Aboriginal & TSI' when abo=0 and tsi=0 then 'NOT Aboriginal or TSI' else null end	AS	[ATSIStatus],
case when interpyes=1 then 1 when interpno=1 then 0 else 0 end	AS	[InterpreterRequired]
FROM [Mig].[MIGRN_ALL]
WHERE URNO=p.URNO
ORDER BY TRY_CONVERT(DATETIME,	[refdate],103  )  DESC
) AS X