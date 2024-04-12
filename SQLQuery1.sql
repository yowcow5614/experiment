SELECT * FROM [master].[dbo].[Sheet1] where [i] <= 100


DECLARE @au_id char( 11 )

SELECT @au_id = min( i ) FROM Sheet1
WHILE @au_id IS NOT NULL

BEGIN
SELECT * FROM Sheet1 WHERE i = @au_id
SELECT @au_id = min( i ) FROM Sheet1 WHERE i > @au_id
END
