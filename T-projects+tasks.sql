CREATE TABLE projects (
    ID INTEGER PRIMARY KEY,
	projects_name TEXT NOT NULL
);

CREATE TABLE tasks(
    ID INTEGER PRIMARY KEY,
	tasks_name TEXT NOT NULL,
	projects_id INTEGER,
	FOREIGN KEY (projects_id) REFERENCES projects  (ID)
);

INSERT INTO projects (ID,projects_name) VALUES
(1,'Mobile App'),
(2,'Website Redesign'),
(3,'Date Migration');

INSERT INTO tasks (ID,tasks_name,projects_id) VALUES
(1,'Desing Login screen',1),
(2,'Build Landing page',2),
(3,'Clean Old Records',3);

SELECT*
FROM tasks
WHERE projects_id = 2;

SELECT tasks.tasks_name
FROM tasks
JOIN projects on tasks.projects_id = projects.ID
WHERE projects.projects_name = 'Website Redesign';
