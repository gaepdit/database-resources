USE airbranch;
GO

CREATE OR ALTER VIEW dbo.MyView
AS

/**************************************************************************************************

Author:     Doug Waldron
Overview:
  General statement about the purpose/use of the view.

Tables accessed:
  MyTable1

Modification History:
When        Who                 What
----------  ------------------  -------------------------------------------------------------------
2026-01-16  DWaldron            Initial version (geco#1234)

***************************************************************************************************/

SELECT GETDATE() AS MyDate;

GO
