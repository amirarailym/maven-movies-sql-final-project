-- Question 7
-- Provide a list of advisors and investors
-- Identify each person as an advisor or investor
-- Include company name for investors

SELECT
    'advisor' AS type,
    CONCAT(advisor.first_name, ' ', advisor.last_name) AS names,
    NULL AS company
FROM advisor

UNION

SELECT
    'investor' AS type,
    CONCAT(investor.first_name, ' ', investor.last_name) AS names,
    company_name AS company
FROM investor;
