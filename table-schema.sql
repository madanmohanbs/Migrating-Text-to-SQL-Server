
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE SCHEMA [mig]
GO
CREATE TABLE [mig].[migrn_all](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[recnumber] [int] NULL,
	[delflag] [bit] NULL,
	[reftype] [varchar](50) NULL,
	[recfin] [bit] NULL,
	[recfindate] [date] NULL,
	[unregloc] [varchar](20) NULL,
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
	[Suicidality Rx] [varchar](50) NULL,
	[Deliberate Self Harm Rx] [varchar](50) NULL,
	[Aggression Rx] [varchar](50) NULL,
	[Risk to Others Rx] [varchar](50) NULL,
	[Avoiding Contact Rx] [varchar](50) NULL,
	[Substance Abuse Rx] [varchar](50) NULL,
	[Inapprop.Sexual Behaviour Rx] [varchar](50) NULL,
	[Cognitive Impairment Rx] [varchar](50) NULL,
	[Serious Medical Condition Rx] [varchar](50) NULL,
	[Level of Non-compliance Rx] [varchar](50) NULL,
	[Cultural Risk Rx] [varchar](50) NULL,
	[Vulnerability to Exploitation Rx] [varchar](50) NULL,
	[Falls Rx] [varchar](50) NULL,
	[Other (specify) Rx] [varchar](50) NULL,
	[Referrers Risk Assessment Rx] [varchar](50) NULL,
	[OVERALL RISK RATING Rx] [varchar](50) NULL,
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
CREATE TABLE [mig].[migrn_dhs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
CREATE TABLE [mig].[migrn_ocome](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
	[contdur] [varchar](60) NULL,
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
CREATE TABLE [mig].[migrn_patient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
CREATE TABLE [mig].[migrn_risk](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
CREATE TABLE [mig].[migrn_risk_group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
CREATE TABLE [mig].[migrn_triage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
CREATE TABLE [mig].[migrn_triage_group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
CREATE TABLE [mig].[migrn_triage_pivot](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RecNo] [int] NULL,
	[R##] [varchar](255) NULL,
	[FIN] [varchar](255) NULL,
	[URN] [varchar](255) NULL,
	[CLI] [varchar](max) NULL,
	[TRI] [varchar](max) NULL,
	[SAV] [varchar](max) NULL,
	[TCE] [varchar](max) NULL,
	[KID] [varchar](max) NULL,
	[PAS] [varchar](max) NULL,
	[CMI] [varchar](max) NULL,
	[CNO] [varchar](max) NULL,
	[MED] [varchar](max) NULL,
	[LOC] [varchar](max) NULL,
	[TAC] [varchar](max) NULL,
	[CON] [varchar](max) NULL,
	[ALT] [varchar](max) NULL,
	[CRI] [varchar](max) NULL,
	[AGY] [varchar](max) NULL,
	[OUT] [varchar](max) NULL,
	[PRO] [varchar](max) NULL,
	[DET] [varchar](max) NULL,
	[REQ] [varchar](max) NULL,
	[WAR] [varchar](max) NULL,
	[INV] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
