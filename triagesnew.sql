/****** Object:  Table [dbo].[Patients]    Script Date: 11/24/2016 1:20:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Patients](
	[PatientId] [uniqueidentifier] NOT NULL,
	[URNo] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Sex] [nvarchar](max) NULL,
	[DOB] [datetime] NOT NULL,
	[MHANo] [nvarchar](255) NULL,
	[MiddleName] [nvarchar](100) NULL,
	[MaritalStatus] [nvarchar](100) NULL,
	[Address] [nvarchar](max) NULL,
	[Town] [nvarchar](255) NULL,
	[PostCode] [nvarchar](10) NULL,
	[State] [nvarchar](100) NULL,
	[HomePhone] [nvarchar](15) NULL,
	[WorkPhone] [nvarchar](15) NULL,
	[MobilePhone] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[GPName] [nvarchar](100) NULL,
	[GPPhone] [nvarchar](100) NULL,
	[GPFax] [nvarchar](100) NULL,
	[CountryOfBirth] [nvarchar](100) NULL,
	[Nationality] [nvarchar](100) NULL,
	[SpokenLanguage] [nvarchar](100) NULL,
	[PatentalStatus] [nvarchar](100) NULL,
	[ChildAge] [nvarchar](10) NULL,
	[ChildSex] [nvarchar](10) NULL,
	[NOK] [nvarchar](100) NULL,
	[NOKRelationship] [nvarchar](100) NULL,
	[NOKAddress] [nvarchar](max) NULL,
	[NOKTown] [nvarchar](100) NULL,
	[NOKState] [nvarchar](100) NULL,
	[NOKHomePhone] [nvarchar](20) NULL,
	[NOKWorkPhone] [nvarchar](20) NULL,
	[NOKMobilePhone] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.Patients] PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO



/****** Object:  Table [dbo].[Triages]    Script Date: 11/21/2016 9:56:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Triages](
	[TriageNo] [nvarchar](max) NULL,
	[TriageId] [uniqueidentifier] NOT NULL,
	[PatientId] [uniqueidentifier] NOT NULL,
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
	[Id] [uniqueidentifier] NOT NULL,
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
	[CMIHistoryDetailsCheck] [nvarchar](max) NULL,
	[CMIDiagnosislastcontact] [nvarchar](max) NULL,
	[AlertsandallergiesCheck] [nvarchar](max) NULL,
	[Alertsandallergies] [nvarchar](max) NULL,
	[CrisisManagementPlanCheck] [nvarchar](max) NULL,
	[EarlyWarningsignsCheck] [nvarchar](max) NULL,
	[UpdatedEarlyEpisodePsychoses] [nvarchar](max) NULL,
	[UpdatedForensicHistory] [nvarchar](max) NULL,
	[UpdatedForensicHistroyInfo] [nvarchar](max) NULL,
	[UpdatedRiskAssessReliability] [bit] NULL,
	[UpdatedSigProtectResilFacPresent] [bit] NULL,
 CONSTRAINT [PK_dbo.Triages] PRIMARY KEY CLUSTERED 
(
	[TriageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__MentalH__01142BA1]  DEFAULT ('') FOR [MentalHelthNo]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__LastNam__02084FDA]  DEFAULT ('') FOR [LastName]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__FirstNa__02FC7413]  DEFAULT ('') FOR [FirstName]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__DOB__03F0984C]  DEFAULT ('1900-01-01T00:00:00.000') FOR [DOB]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__Sex__04E4BC85]  DEFAULT ('') FOR [Sex]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__Marital__05D8E0BE]  DEFAULT ('') FOR [MaritalStatus]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__Address__06CD04F7]  DEFAULT ('') FOR [Address]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__HomePho__07C12930]  DEFAULT ('') FOR [HomePhone]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__WorkPho__08B54D69]  DEFAULT ('') FOR [WorkPhone]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__MobileP__09A971A2]  DEFAULT ('') FOR [MobilePhone]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__SpokenL__0A9D95DB]  DEFAULT ('') FOR [SpokenLanguage]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__Demogra__0B91BA14]  DEFAULT ('') FOR [DemographicDetailCheck]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__NameOfR__0C85DE4D]  DEFAULT ('') FOR [NameOfReferrer]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__Contact__0D7A0286]  DEFAULT ('') FOR [ContactDetails]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__ClientD__0E6E26BF]  DEFAULT ('') FOR [ClientDetails]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__Referra__0F624AF8]  DEFAULT ('') FOR [Referralmedium]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__GPaware__10566F31]  DEFAULT ((0)) FOR [GPawareofreferral]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__Clienta__114A936A]  DEFAULT ((0)) FOR [Clientawareofreferral]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__Referre__123EB7A3]  DEFAULT ('') FOR [ReferrersRequestedService]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__Alertsa__1332DBDC]  DEFAULT ('') FOR [Alertsandallergies]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__Updated__14270015]  DEFAULT ('') FOR [UpdatedEarlyEpisodePsychoses]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__Updated__151B244E]  DEFAULT ('') FOR [UpdatedForensicHistory]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__Updated__160F4887]  DEFAULT ((0)) FOR [UpdatedRiskAssessReliability]
GO
ALTER TABLE [dbo].[Triages] ADD  CONSTRAINT [DF__Triages__Updated__17036CC0]  DEFAULT ((0)) FOR [UpdatedSigProtectResilFacPresent]
GO
ALTER TABLE [dbo].[Triages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Triages_dbo.Patients_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
ON DELETE CASCADE
GO

