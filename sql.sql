CREATE OR REPLACE FUNCTION isPacoCreation(currency varchar, day timestamp) RETURNS boolean as $$
DECLARE
    closed_day timestamp;
    max_creation_date timestamp;
    min_creation_date timestamp;
    is_creation boolean = false;
    max_id integer;
    min_id integer;
begin
	select INTO max_creation_date, max_id MAX(creation_date), id from (select * from audit_calendar ac WHERE calendar_name=currency and new_value = day and "action" = 'SAVE') x group by id;
	select INTO min_creation_date, min_id MAX(creation_date), id from (select * from audit_calendar ac WHERE calendar_name=currency and new_value = day and "action" = 'DELETE') x group by id;
    if max_creation_date is NULL then
	    is_creation = false;
	ELSIF max_creation_date is not null and min_creation_date is null then
	    is_creation = true;
	ELSIF max_creation_date > min_creation_date  then
	    is_creation = true;
	ELSIF max_creation_date = min_creation_date and  max_id > min_id then
	    is_creation = true;
	ELSIF max_creation_date = min_creation_date and  min_id > max_id then
	    is_creation = false;
	END IF;	
    return is_creation;
END
$$ LANGUAGE plpgsql;


select cd.*, isPacoCreation(cd.calendar_name , cd."day") as "is_paco_creation"  from closed_day cd 
