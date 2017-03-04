# Who had the largest donation? 

SELECT `name`, transaction_amt
FROM indiv
ORDER BY transaction_amt DESC
;

# How many people gave more than $2000?

SELECT `name`, transaction_amt
FROM indiv
WHERE transaction_amt > 2000
;

# How many individuals are there in this data? 

SELECT DISTINCT `name`
FROM indiv
;
/* 
Notice that there appear to be multiple spellings and entries for the same person; 
that's part of the challenge of this dataset, that the names of individuals are not standardized. 
*/

# Who gave the biggest number of donation? 

SELECT `name`, COUNT(*)
FROM indiv
GROUP BY `name`
ORDER BY COUNT(*) DESC
;
/*
Remember the rule about queries that use GROUP BY and have an aggregate function (such as COUNT() or SUM():
Whatever fields you list in the SELECT statement with those functions MUST be included in the GROUP BY line. 
You do not put the functions in the GROUP BY.
*/

# Who gave the most money? 

SELECT `name`, COUNT(*), SUM(transaction_amt)
FROM indiv
GROUP BY `name`
;

# How many donations were given by people who claim to be a "homemaker"?

SELECT `name`, occupation, employer, transaction_amt
FROM indiv
WHERE occupation = 'homemaker'
;

# What if they put 'homemaker' in the employer instead? 

SELECT `name`, occupation, employer, transaction_amt
FROM indiv
WHERE occupation = 'homemaker' OR employer = 'homemaker'
;
/*
In a WHERE statement, OR broadens your results (this OR this should be true);
AND narrows your results (this AND this must be true)
*/

# What if someone entered 'homemaker' in a slightly different way, such as 'a homemaker'?

SELECT `name`, occupation, employer, transaction_amt
FROM indiv
WHERE occupation LIKE '%homemaker%' OR employer LIKE '%homemaker%'
;
/* By using LIKE instead of = and using % signs, which are wildcards that mean "any number of characters", we're searching 
inside of employer and occupation for cells that CONTAIN the word 'homemaker'
*/

# Which candidate got the most money? 

SELECT cand_name, SUM(transaction_amt)
FROM indiv, cand
WHERE indiv.cand_id = cand.cand_id
GROUP BY cand_name
ORDER BY SUM(transaction_amt) DESC
;
/*
This is called an "inner join", where only matches are returned. There are other ways to write a join, such as this: 
*/

SELECT cand_name, SUM(transaction_amt)
FROM indiv
INNER JOIN cand
ON indiv.cand_id = cand.cand_id
GROUP BY cand_name
ORDER BY SUM(transaction_amt)
;

/* By using the INNER JOIN and ON statements, you get the exact same results. But this syntax allows you to do different
kinds of joins, such as LEFT and RIGHT JOINS. Basically a LEFT JOIN returns all the records in the FROM table, regardless 
it has a match in the JOIN table. So if the cand table was missing some of our candidates, we would still see the contributions,
but there would be no candidate information from the cand table.
*/
