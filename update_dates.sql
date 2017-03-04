ALTER TABLE indiv ADD liz_date DATE AFTER transaction_dt;

### STR_TO_DATE function takes a date formatted as text and turns it into a date. 
### inside the parantheses, first tell MySQL what field you're transforming, and in the second part
### tell it what format your date is CURRENTLY in (see the MySQL docs for how to do that).
### One of the most common formats is mm/dd/yyyy, which looks like this: '%m/%d/%Y'

UPDATE indiv SET liz_date = STR_TO_DATE(transaction_dt, '%Y-%m-%d');