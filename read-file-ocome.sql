set  nocount on
Declare
 @path as varchar(255)='E:\Triage Migration\DevDocs\ocome.txt',
 @formatfile as varchar(255)='E:\Triage Migration\PROJECT\Dce.Bendigo.Migration\Dce.Bendigo.Migration\format-ocome.xml',
 @query nvarchar(max)

--OPENROWSET processing goes here, using @fileName to identify which file to use
	--    SELECT * FROM  OPENROWSET(BULK  '', FORMATFILE=''     ) AS T ;
	set @query  = 'SELECT   *  FROM  OPENROWSET(BULK '   
	  + '''' + @path +''''
      +', ERRORFILE = ''C:\error_ocome.txt'',MAXERRORS=100, FORMATFILE = ' + ''''+ @formatfile + ''''    
      +' ) AS T' 
	  print(@query)
	 
	  INSERT INTO Mig.MIGRN_OCOME( recnumber, respcat, resptxt, pastcon, rapnosearch, rapnotfound, rapfound, rapdx,
	   accserv, notaccserv, serv, oth, faxyes, faxno, faxdate, discussyes, discussno, discusstime, triclin, contdur, signoff, signoffdate)
	  exec sp_executesql  @query

	  
	  