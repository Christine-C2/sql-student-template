/*
Example lesson stub
*/
SELECT		ps.PatientID,
			ps.Hospital,
			ps.Ward,
			DATEADD(week, -2, ps.AdmittedDate) AS ReminderDate,
			ps.Admitteddate,
			ps.DischargeDate,
			DATEADD(MONTH, 3, ps.DischargeDate) AS apptDate,
			DateDiff(day, ps.admittedDate, ps.DischargeDate) AS LengthOfStay
FROM		PatientStay AS ps
WHERE		ps.Hospital IN ('Kingston', 'PRUH')
			AND ps.Ward LIKE '%Surgery'
			AND ps.AdmittedDate BETWEEN '2024-02-27' AND '2024-02-29'
ORDER BY	ps.AdmittedDate, ps.DischargeDate;


--SELECT DATEADD(WEEK, -2, '2026-10-26') AS TestValue