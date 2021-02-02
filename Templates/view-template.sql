USE airbranch;
GO
SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

CREATE OR ALTER VIEW dbo.MyView AS

/*******************************************************************************

Author:     Doug Waldron
Overview:   General statement about the purpose/use of the view

Tables accessed:
    MyTable1

Modification History:
When        Who                 What
----------  ------------------  ------------------------------------------------
2021-02-02  DWaldron            Initial Version

*******************************************************************************/

SELECT GETDATE() AS MyDate;

GO
