--Q1a
SELECT SUM(total_claim_count) AS total_claim, npi
FROM prescription INNER JOIN prescriber
USING (npi)
GROUP BY npi
ORDER BY total_claim DESC;

--Q1b
SELECT total_claim_count AS total_claim, nppes_provider_first_name, nppes_provider_last_org_name, specialty_description
FROM prescription INNER JOIN prescriber
USING (npi);

--Q2a
SELECT SUM(total_claim_count) AS total_claim, specialty_description
FROM prescription INNER JOIN prescriber
USING (npi)
GROUP BY specialty_description
ORDER BY total_claim DESC;

--Q2b
/*This does not work, each join works individually but has an error when trying 
2 joins, ERROR:  syntax error at or near "FROM" at 2nd join*/ 
--SELECT SUM(opioid_drug_flag) AS opioid_count, specialty_description
--FROM prescription INNER JOIN prescriber
--USING (npi)
--FROM prescription FULL JOIN drug
--USING (drug_name)
--GROUP BY specialty_description
--ORDER BY opioid_count DESC;

--3a
SELECT total_drug_cost, drug_name, generic_name
FROM prescription FULL JOIN drug
USING (drug_name);




