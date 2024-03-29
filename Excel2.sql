select P.Val from(select distinct rtrim(ltrim(AGY)) as Val from [mig].[MIGRN_ALL]) as P

select distinct Name from TriageLists  where ListType = 22 

select  rtrim(ltrim([amhsreg])) as Existing, count(*) as Num from [mig].[migrn_patient]   group by amhsreg  order by 1	

--===================================
--REFERRALMEDIUM
--===================================
select  rtrim(ltrim(refmedium))as  Existing, count(*) as Num from [mig].[migrn_patient] group by refmedium  order by 1	
select distinct Name from TriageLists  where ListType = 15   order by 1	--ReferralMedium

--===================================
--REFERRALORIGIN
--===================================	
select  rtrim(ltrim(reforigin))as  Existing, count(*) as Num from [mig].[migrn_patient] group by reforigin  order by 1	
select  rtrim(ltrim(reforigin))as  Existing  from [mig].[migrn_patient] group by reforigin  order by 1	
select reforigin, CHARINDEX('|',reforigin,1), SUBSTRING(reforigin,1, CHARINDEX('|',reforigin,1)-1)as  Existing from [mig].[migrn_patient] group by reforigin  order by 1
select  SUBSTRING(reforigin,1, CHARINDEX('|',reforigin,1)-1)as  Existing, count(*) as Num  from [mig].[migrn_patient] group by  SUBSTRING(reforigin,1, CHARINDEX('|',reforigin,1)-1)  order by 1	
select distinct Name from TriageLists  where ListType = 16  order by 1	--ReferralOrigin	

--===================================
--MHASTATUS
--===================================
select  rtrim(ltrim(reforigin))as  Existing, count(*) as Num from [mig].[migrn_patient] group by reforigin  order by 1	
select  replace( SUBSTRING(reforigin, CHARINDEX('|',reforigin,1)+1,len(reforigin)),'|','')as  Existing, count(*) as Num  from [mig].[migrn_patient] group by replace( SUBSTRING(reforigin, CHARINDEX('|',reforigin,1)+1,len(reforigin)),'|','')   order by 1	
select distinct Name from TriageLists  where ListType = 17   order by 1		--MHAStatus	


--===================================
--MEDICATION
--===================================
SELECT   LEFT(Data,charindex('|',Data,1)-1)	As Medication, count(*) as Num FROM  Mig.MIGRN_TRIAGE
WHERE        (Property = N'MED') group by LEFT(Data,charindex('|',Data,1)-1) order by Num desc
select distinct Name from TriageLists  where ListType = 8   order by 1		--Medication	

--===================================
--KNOWNCONDITION
--===================================
SELECT   (Data)	As Condition, count(*) as Num FROM  [Mig].[MIGRN_TRIAGE]  
WHERE        (Property = N'CON') 
group by (Data) order by Num desc
select distinct Name from TriageLists  where ListType = 10 --KnownCondition	


--===================================
--INVESTIGATION
--===================================
select distinct Name from TriageLists  where ListType = 11		--Investigation	
select   distinct rtrim(ltrim(INV)) as Val from [mig].[MIGRN_ALL]

--===================================
----AGENCY	
--===================================
select distinct Name from TriageLists  where ListType = 12		--Agency	
select   distinct rtrim(ltrim(AGY)) as Val from [mig].[MIGRN_ALL]

