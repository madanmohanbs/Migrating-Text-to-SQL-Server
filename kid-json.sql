select 
[KID] 
,REPLACE(REPLACE (REPLACE (REPLACE (REPLACE (REPLACE([KID]
,' ','')
,'M','Male')
,'F','Female')
,']','"}')
,'[','{ ChildAge:"')
,'|','", ChildSex:"')

FROM [mig].[MIGRN_ALL] WHERE  [KID]<> ''

--=======================
--[dbo].[PatientEntities]
--=======================
update  [dbo].[PatientEntities] set
--select 
children 
=REPLACE(REPLACE (REPLACE (REPLACE (REPLACE (REPLACE([children]
,' ','')
,'M]','Male]')
,'F]','Female]')
,']','"}')
,'[','{ ChildAge:"')
,'|','", ChildSex:"')

FROM [dbo].[PatientEntities] 
WHERE  [children]<> ''

--=======================
--[dbo].[Triages]
--=======================
update  [dbo].[Triages] set
--select 
children 
=REPLACE(REPLACE (REPLACE (REPLACE (REPLACE (REPLACE([children]
,' ','')
,'M]','Male]')
,'F]','Female]')
,']','"}')
,'[','{ ChildAge:"')
,'|','", ChildSex:"')

FROM [dbo].[Triages]
WHERE  [children]<> ''