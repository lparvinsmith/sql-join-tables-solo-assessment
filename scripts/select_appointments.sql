-- retrieve appointment information
SELECT d.surname, d.given_name, p.surname, p.given_name, a.date, a.time
FROM patients p
INNER JOIN appointments a
  ON p.id = a.patients_id
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE d.surname = 'Hubbard'
  AND d.given_name = 'Spencer'
;

SELECT d.surname, d.given_name, p.surname, p.given_name, a.date, a.time
FROM doctors d
INNER JOIN appointments a
  ON d.id = a.doctor_id
INNER JOIN patients p
  ON a.patient_id = p.id
WHERE p.surname = 'Wilcox'
  AND p.given_name = 'Marsha'
;
