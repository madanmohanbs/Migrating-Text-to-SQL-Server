

INSERT INTO [dbo].Patients
(
	   PatientId
	  ,[URNo]
	  ,[CMI]
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
      ,[ChildAge]
      ,[ChildSex]
      ,[NOK]
      ,[NOKRelationship]
      ,[NOKAddress]
      ,[NOKTown]
      ,[NOKState]
      ,[NOKHomePhone]
      ,[NOKWorkPhone]
      ,[NOKMobilePhone]
)

SELECT X.* FROM (  select distinct URNO  FROM [Mig].[MIGRN_PATIENT]) as P
CROSS APPLY(
SELECT TOP 1
NEWID() as PatientId,
URNO ,
null AS CMI,
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
unregloc AS [MobilePhone] ,
null as Email,
gp AS  [GPName] ,
gpphone AS  [GPPhone] ,
null as [GPFax],
cob AS  [CountryOfBirth] ,
nation AS  [Nationality] ,
flang AS  [SpokenLanguage] ,
parent AS  [ParentalStatus] ,
null as [ChildAge],
null as [ChildSex],
nok AS  [NOK] ,
nokrelat AS  [NOKRelationship] ,
nokaddr AS  [NOKAddress] ,
noktown AS  [NOKTown] ,
nokstate AS  [NOKState] ,
nokphone AS  [NOKHomePhone] ,
null AS [NOKWorkPhone],
null AS [NOKMobilePhone]
FROM [Mig].[MIGRN_PATIENT]
WHERE URNO=p.URNO
ORDER BY TRY_CONVERT(DATETIME,	[refdate],103  )  DESC
) AS X