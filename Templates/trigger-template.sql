USE [airbranch];
GO
SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

CREATE OR ALTER TRIGGER dbo.MyTrigger
    ON dbo.MyTable
    AFTER UPDATE AS

/*******************************************************************************

Author:     Doug Waldron
Overview:   General statement about the purpose/use of the trigger

Tables written to:
    MyTable1

Tables accessed:
    MyTable2

Modification History:
When        Who                 What
----------  ------------------  ------------------------------------------------
2021-02-02  DWaldron            Initial Version

*******************************************************************************/

BEGIN
    SET NOCOUNT ON;

    -- Add trigger body here

END;
GO
