Google Cloud Bigquery


--Groupby_bldgclass

SELECT year, 
CASE 
    WHEN bldgcat IN ('A','B','C','D','R') THEN 'Residential'
    WHEN bldgcat IN ('S') THEN 'Mixed'
    WHEN bldgcat IN ('H','K','L','O') THEN 'Commercial'
    WHEN bldgcat IN ('E','F','G','T','U') THEN 'Industrial'
    ELSE 'Other' END AS bldgtype,
COUNT(*) AS bldg_count, SUM(bldgarea) AS tot_area
FROM(
    SELECT *, GREATEST(yearbuilt, yearalter1, yearalter2) AS year, SUBSTR(bldgclass,1,1) as bldgcat  
    FROM `graphic-centaur-347003.nycdsa_proj1.pluto`) Q
WHERE year>=1790 AND year<2022
GROUP BY year, bldgtype
ORDER BY year DESC, bldgtype ASC;

--Groupby_bldgclass_5years

SELECT year, 
CASE 
    WHEN bldgcat IN ('A','B','C','D','R') THEN 'Residential'
    WHEN bldgcat IN ('S') THEN 'Mixed'
    WHEN bldgcat IN ('H','K','L','O') THEN 'Commercial'
    WHEN bldgcat IN ('E','F','G','T','U') THEN 'Industrial'
    ELSE 'Other' END AS bldgtype,
COUNT(*) AS bldg_count, SUM(bldgarea) AS tot_area
FROM(
    SELECT *, floor(GREATEST(yearbuilt, yearalter1, yearalter2) / 5) * 5 AS year, SUBSTR(bldgclass,1,1) as bldgcat  
    FROM `graphic-centaur-347003.nycdsa_proj1.pluto`) Q
WHERE year>=1790
GROUP BY year, bldgtype
ORDER BY year DESC, bldgtype ASC;

--Groupby_borough

SELECT year, borough, COUNT(*) AS bldg_count, SUM(bldgarea) AS tot_area
FROM(
    SELECT *, GREATEST(yearbuilt, yearalter1, yearalter2)AS year
    FROM `graphic-centaur-347003.nycdsa_proj1.pluto`) Q
WHERE year>=1790 AND year<2022
GROUP BY year, borough
ORDER BY year DESC, borough;

--Groupby_borough_5years

SELECT year, borough, COUNT(*) AS bldg_count, SUM(bldgarea) AS tot_area
FROM(
    SELECT *, floor(GREATEST(yearbuilt, yearalter1, yearalter2) / 5) * 5 AS year
    FROM `graphic-centaur-347003.nycdsa_proj1.pluto`) Q
WHERE year>=1790
GROUP BY year, borough
ORDER BY year DESC, borough;

--guilded age

SELECT bct2020, SUM(bldgarea) AS bldgarea_total, SUM(resarea) AS resarea_total, SUM(comercial_area) AS comarea_total, 
        AVG(longitude) AS x, AVG(latitude) As y
FROM(
    SELECT *
    FROM(
        SELECT GREATEST(yearbuilt, yearalter1, yearalter2) AS year, bct2020,
        bldgarea, resarea, (comarea+officearea+retailarea) as comercial_area,
        longitude, latitude
        FROM `graphic-centaur-347003.nycdsa_proj1.pluto`
        WHERE latitude IS NOT NULL) AS P
    WHERE year >= 1880 AND year <=1905) Q
GROUP BY bct2020

--roaring twenties

SELECT bct2020, SUM(bldgarea) AS bldgarea_total, SUM(resarea) AS resarea_total, SUM(comercial_area) AS comarea_total, 
        AVG(longitude) AS x, AVG(latitude) As y
FROM(
    SELECT *
    FROM(
        SELECT GREATEST(yearbuilt, yearalter1, yearalter2) AS year, bct2020,
        bldgarea, resarea, (comarea+officearea+retailarea) as comercial_area,
        longitude, latitude
        FROM `graphic-centaur-347003.nycdsa_proj1.pluto`
        WHERE latitude IS NOT NULL) AS P
    WHERE year > 1915 AND year <1935) Q
GROUP BY bct2020

--postwar

SELECT bct2020, SUM(bldgarea) AS bldgarea_total, SUM(resarea) AS resarea_total, SUM(comercial_area) AS comarea_total, 
        AVG(longitude) AS x, AVG(latitude) As y
FROM(
    SELECT *
    FROM(
        SELECT GREATEST(yearbuilt, yearalter1, yearalter2) AS year, bct2020,
        bldgarea, resarea, (comarea+officearea+retailarea) as comercial_area,
        longitude, latitude
        FROM `graphic-centaur-347003.nycdsa_proj1.pluto`
        WHERE latitude IS NOT NULL) AS P
    WHERE year > 1945 AND year <1965) Q
GROUP BY bct2020

--WallStBoom

SELECT bct2020, SUM(bldgarea) AS bldgarea_total, SUM(resarea) AS resarea_total, SUM(comercial_area) AS comarea_total, 
        AVG(longitude) AS x, AVG(latitude) As y
FROM(
    SELECT *
    FROM(
        SELECT GREATEST(yearbuilt, yearalter1, yearalter2) AS year, bct2020,
        bldgarea, resarea, (comarea+officearea+retailarea) as comercial_area,
        longitude, latitude
        FROM `graphic-centaur-347003.nycdsa_proj1.pluto`
        WHERE latitude IS NOT NULL) AS P
    WHERE year > 1980 AND year <1995) Q
GROUP BY bct2020

--21C

SELECT bct2020, SUM(bldgarea) AS bldgarea_total, SUM(resarea) AS resarea_total, SUM(comercial_area) AS comarea_total, 
        AVG(longitude) AS x, AVG(latitude) As y
FROM(
    SELECT *
    FROM(
        SELECT GREATEST(yearbuilt, yearalter1, yearalter2) AS year, bct2020,
        bldgarea, resarea, (comarea+officearea+retailarea) as comercial_area,
        longitude, latitude
        FROM `graphic-centaur-347003.nycdsa_proj1.pluto`
        WHERE latitude IS NOT NULL) AS P
    WHERE year > 2000) Q
GROUP BY bct2020