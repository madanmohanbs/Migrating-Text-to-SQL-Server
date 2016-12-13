--SQL Server blocked access to STATEMENT 'OpenRowset/OpenDatasource' of component 'Ad Hoc Distributed Queries' 
--because this component is turned off as part of the security configuration for this server.
-- A system administrator can enable the use of 'Ad Hoc Distributed Queries' 
--by using sp_configure. For more information about enabling 'Ad Hoc Distributed Queries',
-- search for 'Ad Hoc Distributed Queries' in SQL Server Books Online.

--EXEC sp_configure 'show advanced options', 1;
--RECONFIGURE;

--EXEC sp_configure 'Ad Hoc Distributed Queries', 1;
--RECONFIGURE;

SELECT TOP 10  *  
FROM 
OPENROWSET('SQLNCLI' 
,'Server=.\sqlexpress;Trusted_Connection=yes;database=d8view_staging'
,'select * from [mig].[migrn_dhs]') AS A

SELECT top 10 *  
FROM OPENDATASOURCE('SQLNCLI',  'Data Source=.\sqlexpress; Integrated Security=SSPI' ).[d8view_staging].[mig].[migrn_dhs]  


select * from sys.servers;

with X as(
SELECT  *  FROM OPENDATASOURCE('SQLNCLI',  'Data Source=.\sqlexpress; Integrated Security=SSPI' ).[d8view_staging].[mig].[migrn_dhs]  
)
select top 1 * from X


