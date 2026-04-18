SELECT sex, Avg(survived) AS survival_rate
FROM titanic
GROUP BY sex;