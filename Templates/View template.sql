USE airbranch;
GO
SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID('dbo.MyView') IS NOT NULL
    DROP VIEW dbo.MyView;
GO

CREATE VIEW dbo.MyView AS

    /*****************************************************************************

Author:     Doug Waldron
Overview:   General statement about the purpose/use of the view

Tables accessed:
    MyTable1

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2018-??-??  DWaldron            Initial Version

*******************************************************************************/

    SELECT GETDATE() AS MyDate;

GO