USE airbranch;
GO
SET ANSI_NULLS ON;
GO

CREATE OR ALTER FUNCTION dbo.MyFunction(@input int)
    RETURNS int
AS

/*******************************************************************************

Author:     Doug Waldron
Overview:   General statement about the purpose/use of the function.

Input Parameters:
    @input - description

Returns:
    int - description

Modification History:
When        Who                 What
----------  ------------------  ------------------------------------------------
2021-08-10  DWaldron            Initial version (geco#483)

*******************************************************************************/

BEGIN

    DECLARE @returnval int = @input;

    RETURN @returnval;

END;
GO
