USE PV_319_Import;
SET DATEFIRST 1;

--EXEC sp_ScheduleForStacionarGroup N'PV_319', N'%UML%', N'������', N'2024-08-10', N'18:30';
--EXEC sp_ScheduleForStacionarGroup N'PD_321', N'%MS SQL Server%', N'�������', N'2024-06-01', N'13:30';

--EXEC sp_PrintScheduleForGroup N'PD_321';
--EXEC sp_PrintScheduleForGroupPeriod N'PV_319', '2024-06-01', '2024-07-01';

--DECLARE @salary SMALLMONEY;
--EXEC @salary = sp_CountTeachersMonthSalary N'������', 2024, 06;
--PRINT (@salary);
--SELECT * FROM Schedule;

--PRINT(DATENAME(WEEKDAY, N'2023-11-23'));
--PRINT(DATEPART(WEEKDAY, N'2023-11-23'));
--DROP PROCEDURE sp_ScheduleForBaseStacionarGroup;
EXEC sp_ScheduleForBaseStacionarGroup N'PV_319', N'����������� ���������������� %', N'������', N'2023-11-23', '18:30', 2,4,6,2,1;