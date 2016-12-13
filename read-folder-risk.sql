set  nocount on
Declare
 @path as varchar(255)='E:\Triage Migration\Risk\',
 @formatfile as varchar(255)='E:\Triage Migration\PROJECT\Dce.Bendigo.Migration\Dce.Bendigo.Migration\format-risk.xml',
 @formatfile2 as varchar(255)='E:\Triage Migration\PROJECT\Dce.Bendigo.Migration\Dce.Bendigo.Migration\format.xml',
 @fileName varchar(200),
 @recnumber varchar(10),
 @query nvarchar(max),
 @query2 nvarchar(max)
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
	set @query  = 'SELECT  RowNum = row_number() OVER (ORDER BY (SELECT 0)), '+@recnumber+' AS recnumber ,null as Property,null as Data,  *  FROM  OPENROWSET(BULK '   
	  + '''' + @path +@fileName + ''''
      +', FORMATFILE = ' + ''''+ @formatfile + ''''  
	  +', FIRSTROW=2,LASTROW = 57'  
      +' ) AS G' 

	set @query2  = 'SELECT null as RowNum, ' +@recnumber+' AS recnumber,  *, null as Category,null as [Description],null as NilInfo, null as [Absent], null as Low, null as Medium, null as High FROM  OPENROWSET(BULK '   
	  + '''' + @path +@fileName + ''''
      +', FORMATFILE = ' + ''''+ @formatfile2 + ''''  
	   +', FIRSTROW=61'    
      +' ) AS H'
	
	 
	  print(@query )
	  --print(@query2 )
	  set @query= @query + ' UNION ALL '+@query2
	  begin try
	  INSERT INTO Mig.MIGRN_RISK(RowNum, RecNo, Property, Data, Category, [Description], NilInfo, [Absent], Low, Medium, High) 
	  exec sp_executesql  @query
	 -- exec sp_executesql  @query2
	  end try
	  begin catch
	   print('ERROR: '+@query )
	  end catch
	  
	  delete from #files where [filename]=@fileName
   
End

