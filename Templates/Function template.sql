USE [airbranch];
GO
SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID('dbo.MyFunction') IS NOT NULL
    DROP FUNCTION dbo.MyFunction;
GO

/*****************************************************************************

Author:     Brian Gregory
Created:    2017-??-??
Overview:   General statement about WHAT the function is doing 

Input Parameters:
  @input - description
  
Returns:
  int - description

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2017-??-??  BGregory            Initial Version

*******************************************************************************/

CREATE FUNCTION dbo.MyFunction
(
                @input int
)
RETURNS int
AS
    BEGIN

        DECLARE @returnval int = @input;
        RETURN @returnval;

    END;

GO