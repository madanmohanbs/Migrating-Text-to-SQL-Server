--[Mig].[MIGRN_PATIENT] <--- pat.txt
--TOTAL PATIENTS(has unique URNO)
select count (distinct urno) AS 'Patient Count', 'TOTAL PATIENTS(has unique URNO)'  from [Mig].[MIGRN_PATIENT]

union
--TOTAL PATIENTS(has unique DOB)
select count (distinct dob) AS 'Patient Count' , 'TOTAL PATIENTS(has unique dob)'  from [Mig].[MIGRN_PATIENT]

union
--TOTAL PATIENTS(has unique DOB,SEX)
select count(*) AS 'Patient Count', 'TOTAL PATIENTS(has unique DOB,SEX)'  from 
(select distinct dob,Male,Female   from [Mig].[MIGRN_PATIENT] )AS P


--TRIAGE RECORDS
select count(*), 'Triage with UrNo' from  [Mig].[MIGRN_PATIENT] as P WHERE P.URNO <> '' 
union
select count(*), 'Triage WITHOUT UrNo' from  [Mig].[MIGRN_PATIENT] as P WHERE P.URNO = ''
union
select count(*), 'Triage all' from  [Mig].[MIGRN_PATIENT] as P



--RISK DATA /Risk folder
select count(distinct recno), 'Total Risk file Data' from [Mig].[MIGRN_RISK] --files 68567
union
--DOX DATA
select count(distinct recno), 'Total Dox file Data' from [Mig].[MIGRN_TRIAGE] -- Files 71686
union
--[Mig].[MIGRN_OCOME] <--ocome.txt
select count(*) , 'Total Ocome txt records' from [Mig].[MIGRN_OCOME]
--select count(distinct recnumber) from [Mig].[MIGRN_OCOME]

--TRIAGE WITH CLINITION
select count(*), 'Triage with clinition' from [Mig].[MIGRN_OCOME] WHERE triclin<>''
union
select count(*),  'Triage WITHOUT clinition' from [Mig].[MIGRN_OCOME] WHERE triclin=''



---LOOKUP FUZZY??
select distinct [marital] from [Mig].[MIGRN_PATIENT]	--47
select distinct [parent] from [Mig].[MIGRN_PATIENT]		--144
select distinct [nokstate] from [Mig].[MIGRN_PATIENT]	--52
select distinct [reforigin] from [Mig].[MIGRN_PATIENT]	--3960
select distinct [refrelat] from [Mig].[MIGRN_PATIENT]	--2232
select distinct [flang] from [Mig].[MIGRN_PATIENT]		--97
select distinct [state] from [Mig].[MIGRN_PATIENT]		--51
select distinct [amhsreg] from [Mig].[MIGRN_PATIENT]	--456
