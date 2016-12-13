set  nocount on
Declare
 @path as varchar(255)='E:\Triage Migration\DevDocs\pat.txt',
 @formatfile as varchar(255)='E:\Triage Migration\PROJECT\Dce.Bendigo.Migration\Dce.Bendigo.Migration\format-patient.xml',
 @query nvarchar(max)

--OPENROWSET processing goes here, using @fileName to identify which file to use
	--    SELECT * FROM  OPENROWSET(BULK  '', FORMATFILE=''     ) AS T ;
	set @query  = 'SELECT   *  FROM  OPENROWSET(BULK '   
	  + '''' + @path +''''
      +', ERRORFILE = ''C:\error_pat.txt'',MAXERRORS=100, FORMATFILE = ' + ''''+ @formatfile + ''''    
      +' ) AS T' 
	  print(@query)
	 
	  INSERT INTO Mig.MIGRN_PATIENT(recnumber, delflag, reftype, recfin, recfindate, unregloc, locrec, URNO, lname, FNAME, dob, Male, Female, marital, Address, town, state, patphone, gp, gpphone, abo, tsi, 
                         cob, nation, flang, interpyes, interpno, parent, nok, nokrelat, nokaddr, noktown, nokstate, nokphone, gpawareyes, gpawareno, clientawareyes, clientawareno, refdate, reftime, refname, reforigin, refrelat, refcontact, 
                         refmedium, amhsreg)
	  exec sp_executesql  @query

	  
	  