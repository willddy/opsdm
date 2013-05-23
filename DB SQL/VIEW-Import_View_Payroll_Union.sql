USE [EOPS]
GO

/****** Object:  View [dbo].[Import_View_Payroll_Union]    Script Date: 06/28/2011 19:14:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE view [dbo].[Import_View_Payroll_Union]
as
select 20110101 as Date_Key, 姓名 as NAME_CHI,档案工资 as PAYROLL_SAL_CONTRACT, 
工资总额 as PAYROLL_SAL_ACTUAL, 奖金 as PAYROLL_SAL_BONUS,应付工资 as PAYROLL_SAL_PAID
from dbo.Import_PAYROLL_012011
union
select 20110201 as Date_Key, 姓名 as NAME_CHI,档案工资 as PAYROLL_SAL_CONTRACT, 
工资总额 as PAYROLL_SAL_ACTUAL, 奖金 as PAYROLL_SAL_BONUS,应付工资 as PAYROLL_SAL_PAID
from dbo.Import_PAYROLL_022011
union
select 20110301 as Date_Key, 姓名 as NAME_CHI,档案工资 as PAYROLL_SAL_CONTRACT, 
工资总额 as PAYROLL_SAL_ACTUAL, 奖金 as PAYROLL_SAL_BONUS,应付工资 as PAYROLL_SAL_PAID
from dbo.Import_PAYROLL_032011
union
select 20110401 as Date_Key, 姓名 as NAME_CHI,档案工资 as PAYROLL_SAL_CONTRACT, 
工资总额 as PAYROLL_SAL_ACTUAL, 奖金 as PAYROLL_SAL_BONUS,应付工资 as PAYROLL_SAL_PAID
from dbo.Import_PAYROLL_042011
union
select 20110501 as Date_Key, 姓名 as NAME_CHI,档案工资 as PAYROLL_SAL_CONTRACT, 
工资总额 as PAYROLL_SAL_ACTUAL, 奖金 as PAYROLL_SAL_BONUS,应付工资 as PAYROLL_SAL_PAID
from dbo.Import_PAYROLL_052011


GO


