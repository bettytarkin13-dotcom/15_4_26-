CREATE TABLE workshop_roster(
    roster_id INTEGER PRIMARY KEY,
	contact_email TEXT NOT NULL UNIQUE,
	display_name TEXT NOT NULL,
	completion_score REAL CHECK (completion_score BETWEEN 0 AND 100),
	wants_certificate BOOLEAN DEFAULT FALSE,
	start_date date NOT NULL,
	last_activity datetime NOT NULL,
	group_label TEXT DEFAULT 'starter'
);

INSERT INTO workshop_roster (roster_id,contact_email,display_name,wants_certificate,start_date,last_activity,completion_score,group_label)VALUES
(1,'mika@campus.com','Mika',1,'2026-04-01','2026-04-14 08:15:00',94.5,'advanced'),
(2,'matan@campus.com','Matan',1,'2026-04-05','2026-04-12 18:20:00',82.0,'advanced'),
(3,'nora@campus.com','Nora',0,'2026-04-07','2026-04-09 10:00:00',74.0,'starter'),
(4,'liam@campus.com','Liam',1,'2026-04-10','2026-04-15 07:45:00',88.0,'regular'),
(5,'dana@campus.com','Dana',0,'2026-04-11','2026-04-11 21:05:00',69.5,'starter');
