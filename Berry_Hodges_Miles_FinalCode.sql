-- Question 1
select StudentGrade,
LastName,
FirstName
from Students;

-- Question 2
select 
TypeID,
LastName,
FirstName
from Students
order by TypeID, LastName, FirstName;

-- Q3 
SELECT
tr.TransDate,
COUNT(tr.TransID)as 'Total Meals',
COUNT(tr.TransID) * 3 AS 'Day Price',
Round(Sum(((tr.TransTotal)/(tr.TransTotal)) * mt.Price) , 2)  AS 'Amount Charged'
FROM Transactions tr
INNER JOIN Students st
ON st.StudentID = tr.StudentID
INNER JOIN MealType mt
ON mt.TypeID = st.TypeID
GROUP BY tr.TransDate;

-- Q4
SELECT
max(tr.TransTotal) as 'Total Free Meals',
max(tr.TransTotal) * 3 AS  'Cost',
max(tr.TransTotal) * mt.Price AS 'Amount Paid'
FROM Transactions tr
INNER JOIN Students st
ON st.StudentID = tr.StudentID
INNER JOIN MealType mt
ON mt.TypeID = st.TypeID
WHERE mt.TypeID = 1
GROUP BY st.StudentID;

-- Question 5
SELECT
max(tr.TransTotal) as 'Total Reduced Transactions', 
max(tr.TransTotal) * 3 as 'Cost',
max(tr.TransTotal) * mt.Price as 'Amount Paid'
FROM Transactions tr
Inner Join Students st
ON st.StudentID = tr.StudentID
Inner Join MealType mt
ON mt.TypeID = st.TypeID
WHERE mt.TypeID = 2
GROUP BY st.StudentID;


-- Question 6
SELECT
st.StudentID,
concat(st.LastName, ', ' , st.FirstName) as 'Student Name',
sum(pa.PayAmount) as 'Payments'
FROM Students st
Inner Join Payments pa
on pa.StudentID = st.StudentID
GROUP BY st.StudentID;

-- Question 7
SELECT 
concat(st.LastName, ', ' , st.FirstName) as 'Student Name',
pa.PayAmount as 'Payments',
max(tr.TransTotal) * mt.Price as 'Student Charges'
FROM Students st
Left JOIN Transactions tr
ON st.StudentID = tr.StudentID
Left JOIN MealType mt
ON mt.TypeID = st.TypeID
Inner JOIN Payments pa
ON st.StudentID = pa.StudentID
GROUP BY st.StudentID;
