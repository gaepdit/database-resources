USE airbranch;
GO

IF OBJECT_ID('dbo.FUNCTION1') IS NOT NULL
    DROP FUNCTION dbo.FUNCTION1;
GO

CREATE FUNCTION [dbo].[FUNCTION1] 
(
    @input int
)
RETURNS int
AS
/*****************************************************************************

Author:     Brian Gregory
Created:    2016-04-28
Overview:   General statement about WHAT the function is doing 

Input Parameters:
  @input - description
  
Output:
  int - description

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2016-04-28  BGregory            Initial Version
2016-04-28  DWaldron            Added drop function check

*******************************************************************************/
