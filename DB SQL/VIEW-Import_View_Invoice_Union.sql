USE [EOPS]
GO

/****** Object:  View [dbo].[Import_View_Invoice_Union]    Script Date: 06/28/2011 19:13:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE view [dbo].[Import_View_Invoice_Union]
as
select 20110101 as Date_Key, Name,SOW, [Working Hours] as Bill_Hours, Total
from Import_INVOICE_012011
union
select 20110201 as Date_Key, Name,SOW,[Working Hours] as Bill_Hours, Total
from Import_INVOICE_022011
union
select 20110301 as Date_Key, Name,SOW,[Working Hours] as Bill_Hours, Total
from Import_INVOICE_032011
union
select 20110401 as Date_Key, Name,SOW,[Working Hours] as Bill_Hours, Total
from Import_INVOICE_042011
union
select 20110501 as Date_Key, Name,SOW,[Working Hours] as Bill_Hours, Total
from Import_INVOICE_052011



GO


