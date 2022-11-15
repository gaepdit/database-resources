USE airbranch;
GO
SET ANSI_NULLS ON;
GO

CREATE OR ALTER VIEW dbo.MyView
AS

/**************************************************************************************************

Author:     Doug Waldron
Overview:   General statement about the purpose/use of the view.

Tables accessed:
  MyTable1

Modification History:
When        Who                 What
----------  ------------------  -------------------------------------------------------------------
2022-11-15  DWaldron            Initial version (GECO-001)

***************************************************************************************************/

SELECT GETDATE() AS MyDate;

GO
