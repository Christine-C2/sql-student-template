SELECT ps.PatientID,
       ps.Ward,
       h.Hospital,
       h.HospitalType
FROM   PatientStay AS ps
       INNER JOIN
       DimHospital AS h
       ON ps.Hospital = h.Hospital
WHERE  h.HospitalType = 'Teaching';

SELECT   h.Reach,
         COUNT(*) AS NumberOfPatients
FROM     PatientStay AS ps
         INNER JOIN
         DimHospital AS h
         ON ps.Hospital = h.Hospital
GROUP BY h.Reach;