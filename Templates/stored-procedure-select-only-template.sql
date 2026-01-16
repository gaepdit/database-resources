USE airbranch;
GO

CREATE OR ALTER PROCEDURE dbo.MySelectProcedure
    @Parameter1 nvarchar(1),
    @Parameter2 int
AS

/**************************************************************************************************

Author:     Doug Waldron
Overview:
  General statement about the purpose/use of the procedure.

Input Parameters:
  @Parameter1 - Description
  @Parameter2 - Description

Tables accessed:
  MyTable2

Modification History:
When        Who                 What
----------  ------------------  -------------------------------------------------------------------
2026-01-16  DWaldron            Initial version (geco#1234)

***************************************************************************************************/

BEGIN
    SET NOCOUNT ON

    -- Add queries here to select data.
    select sysdatetimeoffset();

END
GO
