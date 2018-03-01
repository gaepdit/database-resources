USE airbranch;
GO
SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID('dbo.MyView') IS NOT NULL
    DROP VIEW dbo.MyView;
GO

/*****************************************************************************

Author:     Brian Gregory
Created:    2017-??-??
Overview:   General statement about the purpose/use of the view

Tables accessed:
  MyTable1

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2017-??-??  BGregory            Initial Version

*******************************************************************************/

CREATE VIEW dbo.MyView
AS SELECT GETDATE() AS MyDate;

GO