-- Titanic Data Analysis

-- Survival by Gender
SELECT sex, AVG(survived) AS survival_rate
FROM titanic
GROUP BY sex;

-- Survival by Class
SELECT pclass, AVG(survived) AS survival_rate
FROM titanic
GROUP BY pclass;

-- Survival by Age Group
SELECT 
  CASE 
    WHEN age < 18 THEN 'Child'
    ELSE 'Adult'
  END AS age_group,
  AVG(survived) AS survival_rate
FROM titanic
GROUP BY age_group;

-- Survival by Family Size
SELECT 
  CASE 
    WHEN sibsp + parch + 1 = 1 THEN 'Alone'
    ELSE 'With Family'
  END AS family_type,
  AVG(survived) AS survival_rate
FROM titanic
GROUP BY family_type;

-- Top Titles by Survival
SELECT 
  SUBSTR(name, INSTR(name, ',') + 2, INSTR(name, '.') - INSTR(name, ',') - 2) AS title,
  AVG(survived) AS survival_rate
FROM titanic
GROUP BY title
ORDER BY survival_rate DESC;