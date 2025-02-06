USE PV_319_DDL;
GO

UPDATE Groups
SET direction=2
WHERE group_id=4;

SELECT * FROM Groups;
		