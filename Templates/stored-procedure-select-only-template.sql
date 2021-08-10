USE airbranch;
GO
SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

CREATE OR ALTER PROCEDURE dbo.MySelectProcedure
    @Parameter1 nvarchar(1),
    @Parameter2 int
AS

/*******************************************************************************

Author:     Doug Waldron
Overview:   General statement about the purpose/use of the procedure.

Input Parameters:
  @Parameter1 - Description
  @Parameter2 - Description

Tables accessed:
  MyTable2

Modification History:
When        Who                 What
----------  ------------------  ------------------------------------------------
2021-08-10  DWaldron            Initial version (geco#483)

*******************************************************************************/

BEGIN
    SET NOCOUNT ON;

    -- Add queries here to select data.
    select sysdatetimeoffset();

END;
GO
