set  nocount on
Declare
 @path as varchar(255)='E:\Triage Migration\DevDocs\dhs.txt',
 @formatfile as varchar(255)='E:\Triage Migration\PROJECT\Dce.Bendigo.Migration\Dce.Bendigo.Migration\format-dhs.xml',
 @query nvarchar(max)

--OPENROWSET processing goes here, using @fileName to identify which file to use
	--    SELECT * FROM  OPENROWSET(BULK  '', FORMATFILE=''     ) AS T ;
	set @query  = 'SELECT   *  FROM  OPENROWSET(BULK '   
	  + '''' + @path +''''
      +', ERRORFILE = ''C:\error_dhs.txt'',MAXERRORS=100, FORMATFILE = ' + ''''+ @formatfile + ''''    
      +' ) AS T' 
	  print(@query)
	 
	  INSERT INTO Mig.MIGRN_DHS( recnumber, prog, medium, locat, servrecpt, servresp, servdate, servtime)
	  exec sp_executesql  @query

	  
	  