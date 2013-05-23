### Design
-----
1. The EOPS is the operation system. The payroll and invoice are sperated into monthly basis. They are merged seperatelly by views. Will merge them into two tables, EOPS_INVOICES and EOPS_PAYROLLS

2. The EOPS DM is OLAP system in relation model. Currently, it is built into OLAP cube by MS SQL server 2008 AS

3. The EOPS RPT is built by MS SQL Reporting Service 2008

4. The data model is built by power designer


### Operation for update
-----
1. Inport monthly payroll and invoice according to the DB structure

2. update the following views
		Import_View_Invoice_Union
		Import_View_Payroll_Union

3. load FIN_PL_FACT 

		delete from EOPS_DM.dbo.FIN_PL_FACT;
		insert into EOPS_DM.dbo.FIN_PL_FACT select * from Gen_View_Merge_Invoce_Payroll;

4. reprocess OLAP cube

__Note__: For security reason, there is no data/meta data in it


### Version History
-----
__V1.0__

1. Create EOPS and EOPS_DM database
2. Create ROLAP model in AS in SQL server 2008
3. Create "Team P&L Target" and "Department P&L" report
4. Import Department II date
