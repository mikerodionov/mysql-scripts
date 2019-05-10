SELECT 
 vehicle_type.vtype AS 'Vehicle Type',
 AVG(accidents_2015.accident_severity) AS 'Average Severity',
 COUNT(accidents_2015.accident_severity) AS 'Number of Accidents'
FROM accidents_2015
JOIN vehicles_2015 ON accidents_2015.accident_index = vehicles_2015.accident_index
JOIN vehicle_type ON vehicles_2015.vehicle_type = vehicle_type.vcode
WHERE vehicle_type.vtype LIKE '%motorcycle%'
GROUP BY vehicle_type.vtype;
