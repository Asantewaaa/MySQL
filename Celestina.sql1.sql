CREATE TABLE persons (id INTEGER PRIMARY KEY AUTO_INCREMENT, name TEXT, age
INTEGER);
INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);
INSERT INTO persons (name, age) VALUES ("Jerry Jay", 9);

CREATE table hobbies (id INTEGER PRIMARY KEY AUTO_INCREMENT, person_id INTEGER,
name TEXT);
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");
INSERT INTO hobbies (person_id, name) VALUES (5, "hunting");

SELECT persons.name, hobbies.name
FROM persons
JOIN hobbies ON persons.id = hobbies.person_id;

SELECT persons.name, hobbies.name
FROM persons
JOIN hobbies ON persons.id = hobbies.person_id 
WHERE persons.name = "Bobby McBobbyFace";

SELECT * FROM persons, hobbies; 

CREATE TABLE students (id INTEGER PRIMARY KEY auto_increment, first_name TEXT, last_name TEXT, email
TEXT, phone TEXT, birthdate TEXT);
INSERT INTO students (first_name, last_name, email, phone, birthdate)
VALUES ("Peter", "Rabbit", "peter@rabbit.com", "555-6666", "2002-06-24");
INSERT INTO students (first_name, last_name, email, phone, birthdate)
VALUES ("Naa", "Wonderland", "alice@wonderland.com", "555-4444", "2002-07-04");


CREATE TABLE student_grades (id INTEGER PRIMARY KEY auto_increment, student_id INTEGER, test TEXT,
grade INTEGER);
INSERT INTO student_grades (student_id, test, grade) VALUES (1, "Nutrition", 95);
INSERT INTO student_grades (student_id, test, grade) VALUES (2, "Nutrition", 92);
INSERT INTO student_grades (student_id, test, grade) VALUES (1, "Chemistry", 85);
INSERT INTO student_grades (student_id, test, grade) VALUES (2, "Chemistry", 95);

CREATE TABLE student_projects (id INTEGER PRIMARY KEY AUTO_INCREMENT, student_id INTEGER, title TEXT);
INSERT INTO student_projects (student_id, title)
VALUES (1, "Carrotapault");

select * from student_grades;

drop table student_grades;

SELECT students.first_name, students.last_name, student_projects.title
FROM students
JOIN student_projects
ON students.id = student_projects.student_id;

drop table students;

CREATE TABLE students (id INTEGER PRIMARY KEY AUTO_INCREMENT,first_name
TEXT,last_name TEXT,email TEXT, phone TEXT,birthdate TEXT,buddy_id INTEGER);
INSERT INTO students
VALUES (1, "Peter", "Rabbit", "peter@rabbit.com", "555-6666", "2002-06-24", 2);
INSERT INTO students
VALUES (2, "Naa", "Wonderland", "alice@wonderland.com", "555-4444", "2002-07-04", 1);
INSERT INTO students
VALUES (3, "Aladdin", "Lampland", "aladdin@lampland.com", "555-3333", "2001-05-10", 4);
INSERT INTO students
VALUES (4, "Simba", "Kingston", "simba@kingston.com", "555-1111", "2001-12-24", 3);

SELECT * FROM students;

SELECT id, first_name, last_name, buddy_id FROM students;

SELECT first_name, last_name, email
FROM students
JOIN students A;

SELECT students.first_name, students.last_name, A.email
FROM students
JOIN students A;


SELECT students.first_name, students.last_name, A.email
FROM students
JOIN students A
ON students.buddy_id = A.id;

SELECT students.first_name, students.last_name, A.email
FROM students
JOIN students A
ON students.id = A.buddy_id;

select * from students;