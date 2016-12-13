		






		
INSERT INTO [dbo].Triages		
(
[TriageId],
[PatientId],		
[TriageNo],
[BHUrNo],		
--delflag  ,		
[ReferralType],		
--recfin ,		
--locrec  ,		
[MentalHelthNo],		
[LastName],		
[FirstName],		
[MiddleName],		
[DOB],		
[Sex],		
[MaritalStatus],		
--[AddressCheck],		
[Address],		
[Town],		
[Postcode],		
[State],		
[HomePhone],		
[WorkPhone],		
[MobilePhone],		
[GPClinicName],		
[GPPhone],		
[ATSIStatus],		
[CountryOfBirth],		
[Nationality],		
[SpokenLanguage],		
[InterpreterRequired],		
[ParentalStatus],		
[NOK],		
[NOKRelationship],		
[NOKAddress],		
[NOKTown],		
[NOKState],		
[NOKHomePhone],
[NOKWorkPhone],
[NOKmobilePhone],		
[GPawareRef],		
[ClientawareRef],		
[ReferralDate],
[ReferralTime],			
[NameOfReferrer],		
[ReferralOrigin],
[MHAStatus],		
[ClientDetails],		
[ContactDetails],		
[Referralmedium],		
[AMHSRegion],		
[Responsecode],		
[ContactBHPsycServices],		
--rapnosearch  ,		
--rapnotfound  ,		
--rapfound  ,		
[TriageOtCmCnfrmtnComment],	
--	
[TriageOutcomeAccepted],
[TriageOutcomeNotAccepted],	
[OutComeMHAStatus] ,		
--faxyes  ,		
--faxno ,		
--faxdate  ,		
[PhoneContactReceivingReferral], --discussyes  		
--discussno ,		
--discusstime ,		
[TriageClinicianDate] ,	
[TriageClinicianTime] ,			
[TriageClinician],		
[Clinician],		
[ContactDuration],		
[AuthorisingClinician],		
[AuthorisingClinicianDate],		
[Program],		
[Medium],		
[Location],		
[ServiceRecipient],		
[ServiceResponse],		
[OutcomeInterventionDate],
[OutcomeInterventionTime],			
[Children],		
[PresentingProblems],		
[Medications],		
[ReferrersRequestedService],		
[CMIHistoryDetails],		
[Alertsandallergies],		
[CrisisManagementPlan],		
[EarlyWarningSigns],		
[OtherAgenciesInvolved],		
[KnownCondition],		
[Investigations],		
--PAS,		
[TriagePlan],		
[DetailsOfpsychiatrists],		
[OutcomeOfIntervention],		
[Notes],		
[CreatedBy],		
--COM  ,	
[ForensicHistroyInfo],
[Abnormalities],		
[EarlyEpisodePsychoses],		
[ForensicHistory],		
[SuicidalityRiskLevel],		
[SelfHarmRiskLevel],		
[AggressionRiskLevel],		
[SocialIsolationRiskLevel],		
--[Avoiding Contact] ,		
[AlcoholDrugIssuesRiskLevel],		
[InappSexualBehaviourRiskLevel],		
[CognitiveImpairmentRiskLevel],		
[SeriousMedicalCondRiskLevel],		
[NonComplianceRiskLevel],		
[CulturalRiskLevel],		
[VulnerabilityExploitRiskLevel],		
[FallsRiskLevel],		
--[Other (specify)] ,		
[RiskAssessReliability],		
--[OVERALL RISK RATING] ,		
[SuicidalityRemarks],		
[SelfHarmRemarks],		
[AggressionRemarks],		
[SocialIsolationRemarks],		
--[Avoiding Contact Rx] ,		
[AlcoholDrugIssuesRemarks],		
[InappSexualBehaviourRemarks],		
[CognitiveImpairmentRemarks],		
[SeriousMedicalCondRemarks],		
[NonComplianceRemarks],		
[CulturalRiskRemarks],		
[VulnerabilityExploitPRemarks],		
[FallsRemarks],		
--[Other (specify) Rx] ,		
--[Referrers Risk Assessment Rx] ,		
--[OVERALL RISK RATING Rx] 		
[NutritionDietaryRiskLevel],
[SleepHygieneRiskLevel],
[ADLCapSelfIntakeRiskLevel],
[HomelessnessRiskLevel],
[SigProtectResilFacPresent],
[TriageClinicianSignature],
OutcomeInterventionDesignation,
[Id],
[DocumentRefId],
[Status],
[IsActive],
[CreatedOn],
[DemographicDetail]	
)		




































































		
SELECT 
NEWID() AS TriageId,
P.PatientId AS PatientId,	
recnumber	AS	[TriageNo],
A.URNO	AS	[BHUrNo],
--delflag  ,		
reftype	AS	[ReferralType],
--recfin ,		
--locrec  ,		
A.URNO	AS	[MentalHelthNo],
lname	AS	[LastName],
FNAME	AS	[FirstName],
null	AS	[MiddleName],
 isnull(TRY_CONVERT(DATETIME,P.[dob],103  ), cast('19000101' as date))	AS	[DOB],
case when Male=1 then 'Male' else 'Female' end	AS	[Sex],
marital	AS	[MaritalStatus],
--case when len(A.[Address])<10 then 'Not Known' when len(A.[Address])> 20 then null else 'Unable to be Verified' end	AS	[AddressCheck],
A.[Address]	AS	[Address],
case when ISNUMERIC(RIGHT(rtrim(A.town),4))=1 and len(A.town)>4 then substring(rtrim(A.town),1,LEN(RTRIM(A.town))-4) else A.[town] end	AS	[Town],
case when ISNUMERIC(RIGHT(rtrim(A.town),4))=1 and len(A.town)>4 then RIGHT(rtrim(A.town),4) else '' end	AS	[Postcode],
upper(A.[state])	AS	[State],
patphone	AS	[HomePhone],
patphone	AS	[WorkPhone],
unregloc	AS	[MobilePhone],
gp	AS	[GPClinicName],
A.gpphone	AS	[GPPhone],
case when abo=1 and tsi=0 then 'Aboriginal' when abo=0 and tsi=1 then 'Torres Strait Islander' when abo=1 and tsi=1 then 'BOTH Aboriginal & TSI' when abo=0 and tsi=0 then 'NOT Aboriginal or TSI' else null end	AS	[ATSIStatus],
cob	AS	[CountryOfBirth],
nation	AS	[Nationality],
flang	AS	[SpokenLanguage],
case when interpyes=1 then 1 when interpno=1 then 0 else 0 end	AS	[InterpreterRequired],
parent	AS	[ParentalStatus],
A.nok	AS	[NOK],
nokrelat	AS	[NOKRelationship],
nokaddr	AS	[NOKAddress],
A.noktown	AS	[NOKTown],
A.nokstate	AS	[NOKState],
nokphone	AS	[NOKHomePhone],
nokphone	AS [NOKWorkPhone],
'' as NOKmobilePhone,
case when gpawareyes=1 then 1 when gpawareno=1 then 0 else 0 end	AS	[GPawareRef],
case when clientawareyes=1 then 1 when clientawareno=1 then 0 else 0 end	AS	[ClientawareRef],
TRY_CONVERT(DATETIME,cast(refdate AS varchar) ,102 ) 	AS	[ReferralDate],
TRY_CONVERT(DATETIME,left(cast(reftime AS varchar),10) ,108 ) 	AS	[ReferralTime],
refname	AS	[NameOfReferrer],
 left(reforigin, charindex('|',reforigin)-1 )  	AS	[ReferralOrigin],
 replace( SUBSTRING(reforigin, CHARINDEX('|',reforigin,1)+1,len(reforigin)),'|','')	AS	[MHAStatus],
refrelat	AS	[ClientDetails],
refcontact	AS	[ContactDetails],
refmedium	AS	[Referralmedium],
amhsreg	AS	[AMHSRegion],
'['+respcat+'] ' + resptxt	AS	[Responsecode],
pastcon	AS	[ContactBHPsycServices],
--rapnosearch  ,		
--rapnotfound  ,		
--rapfound  ,		
rapdx  	AS	[TriageOtCmCnfrmtnComment],
--case when accserv=1 then 'Accepted for Service' when notaccserv=1 then 'Not Accepted for Service' end	AS [TriageOutcome]	,
accserv AS [TriageOutcomeAccepted],
notaccserv AS [TriageOutcomeNotAccepted],
serv	AS	[OutComeMHAStatus],
--faxyes  ,		
--faxno ,		
--faxdate  ,		
case when discussyes=1 then 1 else 0 end AS PhoneContactReceivingReferral,		
--discussno ,		
--discusstime ,		
TRY_CONVERT(DATETIME, [refdate],103  )	AS	[TriageClinicianDate],
TRY_CONVERT(DATETIME, [reftime],108  )	AS	[TriageClinicianTime],
triclin	AS	[TriageClinician],
triclin	AS	[Clinician],
contdur	AS	[ContactDuration],
signoff	AS	[AuthorisingClinician],
TRY_CONVERT(DATETIME,[signoffdate] , 103)	AS	[AuthorisingClinicianDate],
prog	AS	[Program],
medium	AS	[Medium],
locat	AS	[Location],
servrecpt	AS	[ServiceRecipient],
servresp	AS	[ServiceResponse],
Try_Convert(datetime,cast(servdate as varchar)   ,103) 	AS	[OutcomeInterventionDate],
Try_Convert(datetime,cast(servtime AS varchar)  ,108) 	AS	[OutcomeInterventionTime],
KID	AS	[Children],
PRO	AS	[PresentingProblems],
MED	AS	[Medications],
REQ	AS	[ReferrersRequestedService],
A.CMI	AS	[CMIHistoryDetails],
ALT	AS	[Alertsandallergies],
CRI	AS	[CrisisManagementPlan],
WAR	AS	[EarlyWarningSigns],
AGY	AS	[OtherAgenciesInvolved],
CON	AS	[KnownCondition],
INV	AS	[Investigations],
--PAS	,
TRI	AS	[TriagePlan],
DET	AS	[DetailsOfpsychiatrists],
OUT	AS	[OutcomeOfIntervention],
CNO	AS	[Notes],
SAV	AS	[CreatedBy],
--COM  ,		
[FOR]	AS	[ForensicHistroyInfo],
case PATINDEX('%AD%',INV) when 0 then 0 else 1 end  AS [Abnormalities],
--case PATINDEX('%NAD%',INV) when 0 then 0 else 1 end  AS [AbnormalitiesNo],	
case when ltrim(EPP)='True' then 'Possible/Prodromal' when ltrim(EPY)='True' then 'Yes' when ltrim(EPN)='True' then 'No' else 'No' end	AS	[EarlyEpisodePsychoses],
case when ltrim(HIN)='True' then 'No' when ltrim(HIY)='True' then 'Yes' else 'Unknown' end	AS	[ForensicHistory],
LEFT(Suicidality,1)	AS	[SuicidalityRiskLevel],
LEFT([Deliberate Self Harm],1)	AS	[SelfHarmRiskLevel],
LEFT([Aggression],1)	AS	[AggressionRiskLevel],
LEFT([Risk to Others],1)	AS	[SocialIsolationRiskLevel],
--LEFT(--[Avoiding Contact] ,		
LEFT([Substance Abuse],1)	AS	[AlcoholDrugIssuesRiskLevel],
LEFT([Inapprop.Sexual Behaviour],1)	AS	[InappSexualBehaviourRiskLevel],
LEFT([Cognitive Impairment],1)	AS	[CognitiveImpairmentRiskLevel],
LEFT([Serious Medical Condition],1)	AS	[SeriousMedicalCondRiskLevel],
LEFT([Level of Non-compliance],1)	AS	[NonComplianceRiskLevel],
LEFT([Cultural Risk],1)	AS	[CulturalRiskLevel],
LEFT([Vulnerability to Exploitation],1)	AS	[VulnerabilityExploitRiskLevel],
LEFT([Falls],1)	AS	[FallsRiskLevel],
--[Other (specify)] ,		
LEFT([Referrers Risk Assessment],1)	AS	[RiskAssessReliability],
--[OVERALL RISK RATING] ,		
[Suicidality Rx]	AS	[SuicidalityRemarks],
[Deliberate Self Harm Rx]	AS	[SelfHarmRemarks],
[Aggression Rx]	AS	[AggressionRemarks],
[Risk to Others Rx]	AS	[SocialIsolationRemarks],
--[Avoiding Contact Rx] ,		
[Substance Abuse Rx]	AS	[AlcoholDrugIssuesRemarks],
[Inapprop.Sexual Behaviour Rx]	AS	[InappSexualBehaviourRemarks],
[Cognitive Impairment Rx]	AS	[CognitiveImpairmentRemarks],
[Serious Medical Condition Rx]	AS	[SeriousMedicalCondRemarks],
[Level of Non-compliance Rx]	AS	[NonComplianceRemarks],
[Cultural Risk Rx]	AS	[CulturalRiskRemarks],
[Vulnerability to Exploitation Rx]	AS	[VulnerabilityExploitPRemarks],
[Falls Rx]	AS	[FallsRemarks],
--[Other (specify) Rx] ,		
--[Referrers Risk Assessment Rx] ,		
--[OVERALL RISK RATING Rx] 		
'' AS [NutritionDietaryRiskLevel],
'' AS [SleepHygieneRiskLevel],
'' AS [ADLCapSelfIntakeRiskLevel],
'' AS [HomelessnessRiskLevel],		
'' AS	[SigProtectResilFacPresent],
'' AS [TriageClinicianSignature],
'' AS [OutcomeInterventionDesignation],
NEWID() AS [Id],
0 AS [DocumentRefId],
4 AS [Status],
1 AS [IsActive],
GETDATE() as [CreatedOn],
'' AS [DemographicDetail]
--select * 		
FROM [Mig].[MIGRN_ALL] as A
INNER JOIN [dbo].[PatientEntities] as P ON P.URNo=A.URNo 
where A.URNO<>''
		
