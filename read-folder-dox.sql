set  nocount on
Declare
 @path as varchar(255)='E:\Triage Migration\Dox\',
 @formatfile as varchar(255)='E:\Triage Migration\PROJECT\Dce.Bendigo.Migration\Dce.Bendigo.Migration\format.xml',
 @fileName varchar(200),
 @recnumber varchar(10),
 @query nvarchar(max)
drop table #files
CREATE TABLE #files (
    [filename] NVARCHAR(255),
    depth INT,
    [isfile] BIT
)

insert into #files exec 
master.sys.xp_dirtree  @path,0,1

select * from #files


While ( (Select Count(*) From #files) >  0 ) --where  [filename] like 'a%'
Begin

    Select Top 1 @fileName = [filename] From #files --where  [filename] like 'a%'
	Select @recnumber =  Substring(@fileName,3, Charindex('-', @fileName,3)-3) 

    -- OPENROWSET processing goes here, using @fileName to identify which file to use
	--    SELECT * FROM  OPENROWSET(BULK  '', FORMATFILE=''     ) AS T ;
	set @query  = 'SELECT  '+@recnumber+' AS recnumber,  *  FROM  OPENROWSET(BULK '   
	  + '''' + @path +@fileName + ''''
      +', FORMATFILE = ' + ''''+ @formatfile + ''''    
      +' ) AS T' 
	  print(@query)
	  INSERT INTO Mig.MIGRN_TRIAGE(RecNo, Property, Data) 
	  exec sp_executesql  @query
	  
	  
	  delete from #files where [filename]=@fileName
   
End

