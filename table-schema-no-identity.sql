
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE SCHEMA [mig]
GO
DROP TABLE [mig].[MIGRN_ALL]
CREATE TABLE [mig].[MIGRN_ALL](
	[Id] [int]  NOT NULL IDENTITY(1,1),
	[recnumber] [int] NULL,
	[delflag] [bit] NULL,
	[reftype] [varchar](50) NULL,
	[recfin] [bit] NULL,
	[recfindate] [date] NULL,
	[unregloc] [int] NULL,
	[locrec] [int] NULL,
	[URNO] [int] NULL,
	[lname] [varchar](50) NULL,
	[FNAME] [varchar](50) NULL,
	[dob] [date] NULL,
	[Male] [bit] NULL,
	[Female] [bit] NULL,
	[marital] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[town] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[patphone] [varchar](500) NULL,
	[gp] [varchar](500) NULL,
	[gpphone] [varchar](50) NULL,
	[abo] [bit] NULL,
	[tsi] [bit] NULL,
	[cob] [varchar](50) NULL,
	[nation] [varchar](50) NULL,
	[flang] [varchar](50) NULL,
	[interpyes] [bit] NULL,
	[interpno] [bit] NULL,
	[parent] [varchar](50) NULL,
	[nok] [varchar](50) NULL,
	[nokrelat] [varchar](50) NULL,
	[nokaddr] [varchar](500) NULL,
	[noktown] [varchar](50) NULL,
	[nokstate] [varchar](50) NULL,
	[nokphone] [varchar](50) NULL,
	[gpawareyes] [bit] NULL,
	[gpawareno] [bit] NULL,
	[clientawareyes] [bit] NULL,
	[clientawareno] [bit] NULL,
	[refdate] [date] NULL,
	[reftime] [time](7) NULL,
	[refname] [varchar](50) NULL,
	[reforigin] [varchar](50) NULL,
	[refrelat] [varchar](50) NULL,
	[refcontact] [varchar](50) NULL,
	[refmedium] [varchar](50) NULL,
	[amhsreg] [varchar](50) NULL,
	[respcat] [varchar](1) NULL,
	[resptxt] [varchar](50) NULL,
	[pastcon] [varchar](50) NULL,
	[rapnosearch] [bit] NULL,
	[rapnotfound] [bit] NULL,
	[rapfound] [bit] NULL,
	[rapdx] [varchar](500) NULL,
	[accserv] [bit] NULL,
	[notaccserv] [bit] NULL,
	[serv] [varchar](500) NULL,
	[oth] [varchar](500) NULL,
	[faxyes] [bit] NULL,
	[faxno] [bit] NULL,
	[faxdate] [date] NULL,
	[discussyes] [bit] NULL,
	[discussno] [bit] NULL,
	[discusstime] [time](7) NULL,
	[triclin] [varchar](500) NULL,
	[contdur] [varchar](50) NULL,
	[signoff] [varchar](50) NULL,
	[signoffdate] [date] NULL,
	[prog] [varchar](200) NULL,
	[medium] [varchar](50) NULL,
	[locat] [varchar](200) NULL,
	[servrecpt] [varchar](200) NULL,
	[servresp] [varchar](200) NULL,
	[servdate] [date] NULL,
	[servtime] [time](7) NULL,
	[KID] [varchar](500) NULL,
	[PRO] [varchar](max) NULL,
	[MED] [varchar](max) NULL,
	[REQ] [varchar](max) NULL,
	[CMI] [varchar](max) NULL,
	[ALT] [varchar](max) NULL,
	[CRI] [varchar](max) NULL,
	[WAR] [varchar](max) NULL,
	[AGY] [varchar](max) NULL,
	[CON] [varchar](max) NULL,
	[INV] [varchar](max) NULL,
	[PAS] [varchar](max) NULL,
	[TRI] [varchar](max) NULL,
	[DET] [varchar](max) NULL,
	[OUT] [varchar](max) NULL,
	[CNO] [varchar](max) NULL,
	[SAV] [varchar](max) NULL,
	[COM] [varchar](max) NULL,
	[FOR] [varchar](max) NULL,
	[EPY] [bit] NULL,
	[EPN] [bit] NULL,
	[EPP] [bit] NULL,
	[HIN] [bit] NULL,
	[HIY] [bit] NULL,
	[Suicidality] [varchar](50) NULL,
	[Deliberate Self Harm] [varchar](50) NULL,
	[Aggression] [varchar](50) NULL,
	[Risk to Others] [varchar](50) NULL,
	[Avoiding Contact] [varchar](50) NULL,
	[Substance Abuse] [varchar](50) NULL,
	[Inapprop.Sexual Behaviour] [varchar](50) NULL,
	[Cognitive Impairment] [varchar](50) NULL,
	[Serious Medical Condition] [varchar](50) NULL,
	[Level of Non-compliance] [varchar](50) NULL,
	[Cultural Risk] [varchar](50) NULL,
	[Vulnerability to Exploitation] [varchar](50) NULL,
	[Falls] [varchar](50) NULL,
	[Other (specify)] [varchar](50) NULL,
	[Referrers Risk Assessment] [varchar](50) NULL,
	[OVERALL RISK RATING] [varchar](50) NULL,
	[Suicidality Rx] [varchar](500) NULL,
	[Deliberate Self Harm Rx] [varchar](500) NULL,
	[Aggression Rx] [varchar](500) NULL,
	[Risk to Others Rx] [varchar](500) NULL,
	[Avoiding Contact Rx] [varchar](500) NULL,
	[Substance Abuse Rx] [varchar](500) NULL,
	[Inapprop.Sexual Behaviour Rx] [varchar](500) NULL,
	[Cognitive Impairment Rx] [varchar](500) NULL,
	[Serious Medical Condition Rx] [varchar](500) NULL,
	[Level of Non-compliance Rx] [varchar](500) NULL,
	[Cultural Risk Rx] [varchar](500) NULL,
	[Vulnerability to Exploitation Rx] [varchar](500) NULL,
	[Falls Rx] [varchar](500) NULL,
	[Other (specify) Rx] [varchar](500) NULL,
	[Referrers Risk Assessment Rx] [varchar](500) NULL,
	[OVERALL RISK RATING Rx] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [mig].[MIGRN_DHS]    Script Date: 11/22/2016 7:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [mig].[MIGRN_DHS](
	[Id] [int] NOT NULL, --IDENTITY(1,1)
	[recnumber] [int] NULL,
	[prog] [varchar](30) NULL,
	[medium] [varchar](30) NULL,
	[locat] [varchar](30) NULL,
	[servrecpt] [varchar](30) NULL,
	[servresp] [varchar](30) NULL,
	[servdate] [varchar](10) NULL,
	[servtime] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [mig].[MIGRN_OCOME]    Script Date: 11/22/2016 7:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [mig].[MIGRN_OCOME](
	[Id] [int]  NOT NULL,--IDENTITY(1,1)
	[recnumber] [int] NULL,
	[respcat] [varchar](1) NULL,
	[resptxt] [varchar](50) NULL,
	[pastcon] [varchar](50) NULL,
	[rapnosearch] [bit] NULL,
	[rapnotfound] [bit] NULL,
	[rapfound] [bit] NULL,
	[rapdx] [varchar](500) NULL,
	[accserv] [bit] NULL,
	[notaccserv] [bit] NULL,
	[serv] [varchar](100) NULL,
	[oth] [varchar](100) NULL,
	[faxyes] [bit] NULL,
	[faxno] [bit] NULL,
	[faxdate] [varchar](10) NULL,
	[discussyes] [bit] NULL,
	[discussno] [bit] NULL,
	[discusstime] [varchar](5) NULL,
	[triclin] [varchar](50) NULL,
	[contdur] [varchar](50) NULL,
	[signoff] [varchar](35) NULL,
	[signoffdate] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [mig].[MIGRN_PATIENT]    Script Date: 11/22/2016 7:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [mig].[MIGRN_PATIENT](
	[Id] [int] NOT NULL,--IDENTITY(1,1) 
	[recnumber] [int] NULL,
	[delflag] [bit] NULL,
	[reftype] [varchar](50) NULL,
	[recfin] [int] NULL,
	[recfindate] [varchar](50) NULL,
	[unregloc] [varchar](50) NULL,
	[locrec] [int] NULL,
	[URNO] [varchar](50) NULL,
	[lname] [varchar](50) NULL,
	[FNAME] [varchar](50) NULL,
	[dob] [varchar](50) NULL,
	[Male] [bit] NULL,
	[Female] [bit] NULL,
	[marital] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[town] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[patphone] [varchar](50) NULL,
	[gp] [varchar](50) NULL,
	[gpphone] [varchar](50) NULL,
	[abo] [bit] NULL,
	[tsi] [bit] NULL,
	[cob] [varchar](50) NULL,
	[nation] [varchar](50) NULL,
	[flang] [varchar](50) NULL,
	[interpyes] [bit] NULL,
	[interpno] [bit] NULL,
	[parent] [varchar](50) NULL,
	[nok] [varchar](50) NULL,
	[nokrelat] [varchar](50) NULL,
	[nokaddr] [varchar](50) NULL,
	[noktown] [varchar](50) NULL,
	[nokstate] [varchar](50) NULL,
	[nokphone] [varchar](50) NULL,
	[gpawareyes] [bit] NULL,
	[gpawareno] [bit] NULL,
	[clientawareyes] [bit] NULL,
	[clientawareno] [bit] NULL,
	[refdate] [varchar](50) NULL,
	[reftime] [varchar](50) NULL,
	[refname] [varchar](50) NULL,
	[reforigin] [varchar](50) NULL,
	[refrelat] [varchar](50) NULL,
	[refcontact] [varchar](50) NULL,
	[refmedium] [varchar](50) NULL,
	[amhsreg] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [mig].[MIGRN_RISK]    Script Date: 11/22/2016 7:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mig].[MIGRN_RISK](
	[Id] [int]NOT NULL,-- IDENTITY(1,1) 
	[UrNo] [nvarchar](10) NULL,
	[RecNo] [nvarchar](10) NULL,
	[RefDate] [nvarchar](10) NULL,
	[RefTime] [nvarchar](10) NULL,
	[RowNum] [int] NULL,
	[Property] [nvarchar](10) NULL,
	[Data] [nvarchar](max) NULL,
	[Category] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[NilInfo] [nchar](1) NULL,
	[Absent] [nchar](1) NULL,
	[Low] [nchar](1) NULL,
	[Medium] [nchar](1) NULL,
	[High] [nchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [mig].[MIGRN_RISK_GROUP]    Script Date: 11/22/2016 7:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [mig].[MIGRN_RISK_GROUP](
	[Id] [int] NOT NULL, --IDENTITY(1,1)
	[RecNo] [int] NULL,
	[Property] [varchar](3) NULL,
	[Num] [int] NULL,
	[Csv] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [mig].[MIGRN_TRIAGE]    Script Date: 11/22/2016 7:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [mig].[MIGRN_TRIAGE](
	[Id] [int] NOT NULL,-- IDENTITY(1,1)
	[UrNo] [nvarchar](10) NULL,
	[RecNo] [nvarchar](10) NULL,
	[RefDate] [nvarchar](10) NULL,
	[RefTime] [nvarchar](10) NULL,
	[Property] [nvarchar](10) NULL,
	[Data] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [mig].[MIGRN_TRIAGE_GROUP]    Script Date: 11/22/2016 7:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [mig].[MIGRN_TRIAGE_GROUP](
	[Id] [int]  NOT NULL,--IDENTITY(1,1)
	[RecNo] [int] NULL,
	[Property] [varchar](3) NULL,
	[Num] [int] NULL,
	[Csv] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [mig].[MIGRN_TRIAGE_PIVOT]    Script Date: 11/22/2016 7:45:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [mig].[MIGRN_TRIAGE_PIVOT](
	[Id] [int]  NOT NULL,--IDENTITY(1,1)
	[RecNo] [int] NULL,
	[R##] [varchar](255) NULL,
	[FIN] [varchar](255) NULL,
	[URN] [varchar](255) NULL,
	[CLI] [varchar](255) NULL,
	[TRI] [varchar](max) NULL,
	[SAV] [varchar](255) NULL,
	[TCE] [varchar](255) NULL,
	[KID] [varchar](255) NULL,
	[PAS] [varchar](max) NULL,
	[CMI] [varchar](max) NULL,
	[CNO] [varchar](max) NULL,
	[MED] [varchar](255) NULL,
	[LOC] [varchar](255) NULL,
	[TAC] [varchar](255) NULL,
	[CON] [varchar](255) NULL,
	[ALT] [varchar](max) NULL,
	[CRI] [varchar](max) NULL,
	[AGY] [varchar](255) NULL,
	[OUT] [varchar](max) NULL,
	[PRO] [varchar](max) NULL,
	[DET] [varchar](255) NULL,
	[REQ] [varchar](max) NULL,
	[WAR] [varchar](max) NULL,
	[INV] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Triages](
	[Id] [uniqueidentifier] NULL,
	[TriageNo] [nvarchar](max) NULL,
	[TriageId] [uniqueidentifier] NULL,
	[PatientId] [uniqueidentifier] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[MentalHelthNo] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[DOB] [datetime] NULL,
	[Sex] [nvarchar](max) NULL,
	[MaritalStatus] [nvarchar](max) NULL,
	[AddressCheck] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Town] [nvarchar](max) NULL,
	[PostCode] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[HomePhone] [nvarchar](max) NULL,
	[WorkPhone] [nvarchar](max) NULL,
	[MobilePhone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[CountryOfBirth] [nvarchar](max) NULL,
	[Nationality] [nvarchar](max) NULL,
	[SpokenLanguage] [nvarchar](max) NULL,
	[Children] [nvarchar](max) NULL,
	[DemographicDetailCheck] [nvarchar](max) NULL,
	[NameOfReferrer] [nvarchar](max) NULL,
	[ContactDetails] [nvarchar](max) NULL,
	[ClientDetails] [nvarchar](max) NULL,
	[Referralmedium] [nvarchar](max) NULL,
	[GPawareofreferral] [bit] NULL,
	[Clientawareofreferral] [bit] NULL,
	[ReferrersRequestedService] [nvarchar](max) NULL,
	[ContactBHPsycServicesCheck] [bit] NULL,
	[OutOfHomeCare] [bit] NULL,
	[GPClinicName] [nvarchar](max) NULL,
	[GPPhone] [nvarchar](max) NULL,
	[GPFax] [nvarchar](max) NULL,
	[InterpreterRequired] [bit] NULL,
	[ATSIStatus] [nvarchar](max) NULL,
	[ParentalStatus] [nvarchar](max) NULL,
	[NOK] [nvarchar](max) NULL,
	[NOKRelationship] [nvarchar](max) NULL,
	[NOKAddress] [nvarchar](max) NULL,
	[NOKTown] [nvarchar](max) NULL,
	[NOKState] [nvarchar](max) NULL,
	[NOKHomePhone] [nvarchar](max) NULL,
	[NOKWorkPhone] [nvarchar](max) NULL,
	[NOKMobilePhone] [nvarchar](max) NULL,
	[ReferralDateTime] [datetime] NULL,
	[AMHSRegion] [nvarchar](max) NULL,
	[ReferralOrigin] [nvarchar](max) NULL,
	[MHAStatus] [nvarchar](max) NULL,
	[ContactBHPsycServices] [nvarchar](max) NULL,
	[CMIHistoryDetails] [nvarchar](max) NULL,
	[CrisisManagementPlan] [nvarchar](max) NULL,
	[EarlyWarningSigns] [nvarchar](max) NULL,
	[PresentingProblems] [nvarchar](max) NULL,
	[MedicationCheck] [nvarchar](max) NULL,
	[Medications] [nvarchar](max) NULL,
	[KnownConditionCheck] [nvarchar](max) NULL,
	[KnownCondition] [nvarchar](max) NULL,
	[InvestigationsCheck] [nvarchar](max) NULL,
	[Investigations] [nvarchar](max) NULL,
	[Abnormalities] [bit] NULL,
	[OtherAgenciesInvolvedCheck] [bit] NULL,
	[OtherAgenciesInvolved] [nvarchar](max) NULL,
	[InvolvedAgenciesNote] [nvarchar](max) NULL,
	[SuicidalityPast] [bit] NULL,
	[SuicidalityRiskLevel] [int] NULL,
	[SuicidalityRemarks] [nvarchar](max) NULL,
	[SelfHarmPast] [bit] NULL,
	[SelfHarmRiskLevel] [int] NULL,
	[SelfHarmRemarks] [nvarchar](max) NULL,
	[AggressionPast] [bit] NULL,
	[AggressionRiskLevel] [int] NULL,
	[AggressionRemarks] [nvarchar](max) NULL,
	[SocialIsolationPast] [bit] NULL,
	[SocialIsolationRiskLevel] [int] NULL,
	[SocialIsolationRemarks] [nvarchar](max) NULL,
	[AlcoholDrugIssuesPast] [bit] NULL,
	[AlcoholDrugIssuesRiskLevel] [int] NULL,
	[AlcoholDrugIssuesRemarks] [nvarchar](max) NULL,
	[InappSexualBehaviourPast] [bit] NULL,
	[InappSexualBehaviourRiskLevel] [int] NULL,
	[InappSexualBehaviourRemarks] [nvarchar](max) NULL,
	[CognitiveImpairmentPast] [bit] NULL,
	[CognitiveImpairmentRiskLevel] [int] NULL,
	[CognitiveImpairmentRemarks] [nvarchar](max) NULL,
	[SeriousMedicalCondPast] [bit] NULL,
	[SeriousMedicalCondRiskLevel] [int] NULL,
	[SeriousMedicalCondRemarks] [nvarchar](max) NULL,
	[NonCompliancePast] [bit] NULL,
	[NonComplianceRiskLevel] [int] NULL,
	[NonComplianceRemarks] [nvarchar](max) NULL,
	[CulturalRiskPast] [bit] NULL,
	[CulturalRiskLevel] [int] NULL,
	[CulturalRiskRemarks] [nvarchar](max) NULL,
	[VulnerabilityExploitPast] [bit] NULL,
	[VulnerabilityExploitRiskLevel] [int] NULL,
	[VulnerabilityExploitPRemarks] [nvarchar](max) NULL,
	[NutritionDietaryPast] [bit] NULL,
	[NutritionDietaryRiskLevel] [int] NULL,
	[NutritionDietaryRemarks] [nvarchar](max) NULL,
	[SleepHygienePast] [bit] NULL,
	[SleepHygieneRiskLevel] [int] NULL,
	[SleepHygieneRemarks] [nvarchar](max) NULL,
	[ADLCapSelfIntakePast] [bit] NULL,
	[ADLCapSelfIntakeRiskLevel] [int] NULL,
	[ADLCapSelfIntakeRemarks] [nvarchar](max) NULL,
	[HomelessnessPast] [bit] NULL,
	[HomelessnessRiskLevel] [int] NULL,
	[HomelessnessRemarks] [nvarchar](max) NULL,
	[FallsPast] [bit] NULL,
	[FallsRiskLevel] [int] NULL,
	[FallsRemarks] [nvarchar](max) NULL,
	[EarlyEpisodePsychoses] [nvarchar](max) NULL,
	[ForensicHistory] [nvarchar](max) NULL,
	[ForensicHistroyInfo] [nvarchar](max) NULL,
	[RiskAssessReliability] [bit] NULL,
	[SigProtectResilFacPresent] [bit] NULL,
	[CMIHistoryDetailsCheck] [nvarchar](max) NULL,
	[CMIDiagnosislastcontact] [nvarchar](max) NULL,
	[AlertsandallergiesCheck] [nvarchar](max) NULL,
	[Alertsandallergies] [nvarchar](max) NULL,
	[CrisisManagementPlanCheck] [nvarchar](max) NULL,
	[EarlyWarningsignsCheck] [nvarchar](max) NULL,
	[UpdateRiskAssesRequired] [bit] NULL,
	[UpdatedSuicidalityPast] [bit] NULL,
	[UpdatedSuicidalityRiskLevel] [int] NULL,
	[UpdatedSuicidalityRemarks] [nvarchar](max) NULL,
	[UpdatedSelfHarmPast] [bit] NULL,
	[UpdatedSelfHarmRiskLevel] [int] NULL,
	[UpdatedSelfHarmRemarks] [nvarchar](max) NULL,
	[UpdatedAggressionPast] [bit] NULL,
	[UpdatedAggressionRiskLevel] [int] NULL,
	[UpdatedAggressionRemarks] [nvarchar](max) NULL,
	[UpdatedSocialIsolationPast] [bit] NULL,
	[UpdatedSocialIsolationRiskLevel] [int] NULL,
	[UpdatedSocialIsolationRemarks] [nvarchar](max) NULL,
	[UpdatedAlcoholDrugIssuesPast] [bit] NULL,
	[UpdatedAlcoholDrugIssuesRiskLevel] [int] NULL,
	[UpdatedAlcoholDrugIssuesRemarks] [nvarchar](max) NULL,
	[UpdatedInappSexualBehaviourPast] [bit] NULL,
	[UpdatedInappSexualBehaviourRiskLevel] [int] NULL,
	[UpdatedInappSexualBehaviourRemarks] [nvarchar](max) NULL,
	[UpdatedCognitiveImpairmentPast] [bit] NULL,
	[UpdatedCognitiveImpairmentRiskLevel] [int] NULL,
	[UpdatedCognitiveImpairmentRemarks] [nvarchar](max) NULL,
	[UpdatedSeriousMedicalCondPast] [bit] NULL,
	[UpdatedSeriousMedicalCondRiskLevel] [int] NULL,
	[UpdatedSeriousMedicalCondRemarks] [nvarchar](max) NULL,
	[UpdatedNonCompliancePast] [bit] NULL,
	[UpdatedNonComplianceRiskLevel] [int] NULL,
	[UpdatedNonComplianceRemarks] [nvarchar](max) NULL,
	[UpdatedCulturalRiskPast] [bit] NULL,
	[UpdatedCulturalRiskLevel] [int] NULL,
	[UpdatedCulturalRiskRemarks] [nvarchar](max) NULL,
	[UpdatedVulnerabilityExploitPast] [bit] NULL,
	[UpdatedVulnerabilityExploitRiskLevel] [int] NULL,
	[UpdatedVulnerabilityExploitPRemarks] [nvarchar](max) NULL,
	[UpdatedNutritionDietaryPast] [bit] NULL,
	[UpdatedNutritionDietaryRiskLevel] [int] NULL,
	[UpdatedNutritionDietaryRemarks] [nvarchar](max) NULL,
	[UpdatedSleepHygienePast] [bit] NULL,
	[UpdatedSleepHygieneRiskLevel] [int] NULL,
	[UpdatedSleepHygieneRemarks] [nvarchar](max) NULL,
	[UpdatedADLCapSelfIntakePast] [bit] NULL,
	[UpdatedADLCapSelfIntakeRiskLevel] [int] NULL,
	[UpdatedADLCapSelfIntakeRemarks] [nvarchar](max) NULL,
	[UpdatedHomelessnessPast] [bit] NULL,
	[UpdatedHomelessnessRiskLevel] [int] NULL,
	[UpdatedHomelessnessRemarks] [nvarchar](max) NULL,
	[UpdatedFallsPast] [bit] NULL,
	[UpdatedFallsRiskLevel] [int] NULL,
	[UpdatedFallsRemarks] [nvarchar](max) NULL,
	[Responsecode] [nvarchar](max) NULL,
	[UpdatedResponsecode] [nvarchar](max) NULL,
	[ResonUpdateResponseCode] [nvarchar](max) NULL,
	[ResponseCodeUpdateDateTime] [datetime] NULL,
	[Clinician] [nvarchar](max) NULL,
	[TriagePlan] [nvarchar](max) NULL,
	[TriageOutcome] [nvarchar](max) NULL,
	[ReferralType] [nvarchar](max) NULL,
	[ReferredexternalService] [nvarchar](max) NULL,
	[ContactDuration] [nvarchar](max) NULL,
	[PhoneContactReceivingReferral] [bit] NULL,
	[PhoneContactReferralDateTime] [datetime] NULL,
	[TriageClinician] [nvarchar](max) NULL,
	[TriageClinicianSignature] [nvarchar](max) NULL,
	[TriageClinicianDesignation] [nvarchar](max) NULL,
	[TriageClinicianDateTime] [datetime] NULL,
	[AuthorisingClinician] [nvarchar](max) NULL,
	[TriageOtCmCnfrmtnComment] [nvarchar](max) NULL,
	[AuthorisingClinicianName] [nvarchar](max) NULL,
	[AuthorisingClinicianSignature] [nvarchar](max) NULL,
	[AuthorisingClinicianDesignation] [nvarchar](max) NULL,
	[AuthorisingClinicianDateTime] [datetime] NULL,
	[Notes] [nvarchar](max) NULL,
	[OutcomeOfIntervention] [nvarchar](max) NULL,
	[DetailsOfpsychiatristsCheck] [nvarchar](max) NULL,
	[DetailsOfpsychiatrists] [nvarchar](max) NULL,
	[OutComeMHAStatus] [nvarchar](max) NULL,
	[Program] [nvarchar](max) NULL,
	[Medium] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
	[ServiceRecipient] [nvarchar](max) NULL,
	[ServiceResponse] [nvarchar](max) NULL,
	[OutcomeInterventionClinician] [nvarchar](max) NULL,
	[OutcomeInterventionSignature] [nvarchar](max) NULL,
	[OutcomeInterventionDesignation] [nvarchar](max) NULL,
	[OutcomeInterventionDateTime] [datetime] NULL,
	[UpdatedEarlyEpisodePsychoses] [nvarchar](max) NULL,
	[UpdatedForensicHistory] [nvarchar](max) NULL,
	[UpdatedForensicHistroyInfo] [nvarchar](max) NULL,
	[UpdatedRiskAssessReliability] [bit] NULL,
	[UpdatedSigProtectResilFacPresent] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO