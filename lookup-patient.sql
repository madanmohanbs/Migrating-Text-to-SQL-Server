SELECT        
Patients.CountryOfBirth, 
Country.Code AS CountryOfBirth2, 
Patients.Nationality, 
Nationality.Code AS Nationality2, 
Patients.SpokenLanguage, 
[Language].Code AS SpokenLanguage2, 
Patients.ParentalStatus,
Parental.Code AS PatentalStatus2, 
Patients.NOKRelationship,
Relationship.Code AS NOKRelationship2, 
Patients.NOKTown, 
TownState.Code AS NOKTown2, 
Patients.MaritalStatus, 
MaritalStatus.Code AS MaritalStatus2
FROM            Patients LEFT OUTER JOIN
                             (SELECT        Code, Name
                               FROM            TriageLists AS Pa
                               WHERE        (ListType = 4)) AS Parental ON Patients.ParentalStatus = Parental.Name LEFT OUTER JOIN
                             (SELECT        Code, Name
                               FROM            TriageLists AS Ma
                               WHERE        (ListType = 3)) AS MaritalStatus ON Patients.MaritalStatus = MaritalStatus.Name LEFT OUTER JOIN
                             (SELECT        Code, Name
                               FROM            TriageLists AS La
                               WHERE        (ListType = 2)) AS [Language] ON Patients.SpokenLanguage = [Language].Name LEFT OUTER JOIN
                             (SELECT        Code, Name
                               FROM            TriageLists AS Na
                               WHERE        (ListType = 1)) AS Nationality ON Nationality.Name = Patients.Nationality LEFT OUTER JOIN
                             (SELECT        Code, Name
                               FROM            TriageLists AS Tw
                               WHERE        (ListType = 6)) AS TownState ON Patients.NOKTown = TownState.Name LEFT OUTER JOIN
                             (SELECT        Code, Name
                               FROM            TriageLists AS Re
                               WHERE        (ListType = 5)) AS Relationship ON Patients.NOKRelationship = Relationship.Name LEFT OUTER JOIN
                             (SELECT        Code, Name
                               FROM            TriageLists AS Co
                               WHERE        (ListType = 0)) AS Country ON Patients.CountryOfBirth = Country.Name