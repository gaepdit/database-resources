USE [airbranch];
GO
SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID('dbo.MyFunction') IS NOT NULL
    DROP FUNCTION dbo.MyFunction;
GO

CREATE FUNCTION dbo.MyFunction(@input int)
    RETURNS int
AS

    /***************************************************************************

Author:     Doug Waldron
Overview:   General statement about the purpose/use of the function

Input Parameters:
    @input - description

Returns:
    int - description

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2019-??-??  DWaldron            Initial Version

*******************************************************************************/

BEGIN

    DECLARE @returnval int = 0;

    RETURN @returnval;

END;

GO