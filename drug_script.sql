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
SELECT specialty_description, total_claim_count
FROM prescription INNER JOIN prescriber
USING (npi);




