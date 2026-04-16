CREATE TABLE student_scores (
    ID INT PRIMARY KEY,
    NAME TEXT NOT NULL,
    SCORE REAL NOT NULL
);

INSERT INTO student_scores (ID, NAME, SCORE) VALUES
(1,'Dana',91.5),
(2,'Omer',76.0),
(3,'Noa',88.0);

SELECT*
FROM student_scores
WHERE SCORE < 90 ;
