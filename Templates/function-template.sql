USE airbranch;
GO

CREATE OR ALTER FUNCTION dbo.MyFunction
(
    @input int
)
    RETURNS int
AS

/**************************************************************************************************

Author:     Doug Waldron
Overview:
  General statement about the purpose/use of the function.

Input Parameters:
  @input - description

Returns:
  int - description

Modification History:
When        Who                 What
----------  ------------------  -------------------------------------------------------------------
2026-01-16  DWaldron            Initial version (geco#1234)

***************************************************************************************************/

BEGIN

    DECLARE @returnval int = @input;

    RETURN @returnval;

END
GO
