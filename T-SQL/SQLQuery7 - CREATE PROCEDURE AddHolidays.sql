USE PV_319_Import;
SET DATEFIRST 1;
GO

ALTER PROCEDURE sp_AddHolidays
	@year	AS SMALLINT,
	@name	AS NVARCHAR(150)
AS
BEGIN
	DECLARE 
	@start_date		AS DATE		= dbo.GetHolidaysStartDate(@name, @year),
	@duration		AS TINYINT	= dbo.GetHolidaysDuration(@name),
	@holiday_id		AS TINYINT	= dbo.GetHolidayID(@name);

	DECLARE 
	@date	AS DATE		= @start_date,
	@day	AS TINYINT	= 0;

	WHILE @day < @duration
	BEGIN
		INSERT DaysOFF
				([date], holiday)
		VALUES	(@date, @holiday_id);
		SET	@day	+=	1;
		SET @date	=	DATEADD(DAY, 1, @date);
	END


	--CASE @name
	--	 WHEN @name LIKE (N'���%��������') THEN SET @start_date = dbo.GetNewYearHolidaysStartDate(@year); SET @duration = dbo.GetHolidaysDuration(@name) END
	--CASE WHEN @nameLIKE (N'���%��������') THEN SET @start_date = dbo.GetSummerHolidaysStart(@year)		; SET @duration = dbo.GetHolidaysDuration(@name) END
	
END