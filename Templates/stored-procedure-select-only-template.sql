USE airbranch;
GO
SET ANSI_NULLS ON;
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
2023-03-16  DWaldron            Initial version (GECO-001)

***************************************************************************************************/

BEGIN
    SET NOCOUNT ON

    -- Add queries here to select data.
    select sysdatetimeoffset();

END
GO
