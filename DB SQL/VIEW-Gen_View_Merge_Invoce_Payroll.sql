USE [EOPS]
GO

/****** Object:  View [dbo].[Gen_View_Merge_Invoce_Payroll]    Script Date: 06/28/2011 20:08:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO









CREATE view [dbo].[Gen_View_Merge_Invoce_Payroll]
as
select row_number() over(order by ef.EMP_KEY) as FIN_PL_KEY, 
ef.EMP_KEY,ipiu.DATE_KEY,case when td.TEAM_KEY IS null then 0 else td.TEAM_KEY end as TEAM_KEY,ef.BILL_RATE_KEY,
ipiu.PAYROLL_SAL_CONTRACT,ipiu.PAYROLL_SAL_ACTUAL,ipiu.PAYROLL_SAL_BONUS,ipiu.PAYROLL_SAL_PAID,
0 as COST_OPS, iviu.Bill_Hours as INVOICE_HOURS,iviu.total*CURR_RATE as INVOICE_AMOUNT,
1 as INVOICE_CURR_KEY,
getdate() as UPDATE_DATE
from
EOPS_DM.dbo.EMP_FACT ef
left join 
Import_View_payroll_Union ipiu on ipiu.Name_CHI=ef.NAME_CHI
left join
Import_View_Invoice_Union iviu on iviu.Name=ef.NAME_ENG and iviu.date_key=ipiu.date_key
left join 
EOPS_DM.dbo.CURRENCY_RATE_DIM crd on crd.CURR_KEY = 1
left join
EOPS_DM.dbo.TEAM_DIM td on td.SOW_NUM = iviu.SOW
where ipiu.DATE_KEY is not null





GO


