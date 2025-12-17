- practice_query_1.sql
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(30) NOT NULL,
    email VARCHAR(50)
);
INSERT INTO users (user_id, user_name, email) VALUES
(6, 'Sumit', 'sumit@gmail.com'),
(7, 'Sumit', 'sumit@gmail.com'),
(8, 'Farhana', 'farhana@gmail.com'),
(9, 'Farhana', 'farhana@gmail.com'),
(10, 'Robin', 'robin@gmail.com');

-- practice_query_2.sql
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    dept_name VARCHAR(50),
    salary INT
);
INSERT INTO employee (emp_id, emp_name, dept_name, salary) VALUES
(101, 'Mohan', 'Admin', 4000),
(102, 'Rajkumar', 'HR', 3000),
(103, 'Akbar', 'IT', 4000),
(104, 'Dorvin', 'Finance', 6500),
(105, 'Rohit', 'HR', 3000),
(106, 'Rajesh', 'Finance', 5000),
(107, 'Preet', 'HR', 7000),
(108, 'Maryam', 'Admin', 4000),
(109, 'Sanjay', 'IT', 6500),
(110, 'Vasudha', 'IT', 7000),
(111, 'Melinda', 'IT', 8000),
(112, 'Komal', 'IT', 10000),
(113, 'Gautham', 'Admin', 2000),
(114, 'Manisha', 'HR', 3000),
(115, 'Chandni', 'IT', 4500),
(116, 'Satya', 'Finance', 6500),
(117, 'Adarsh', 'HR', 3500),
(118, 'Tejaswi', 'Finance', 5500),
(119, 'Cory', 'HR', 8000),
(120, 'Monica', 'Admin', 5000),
(121, 'Rosalin', 'IT', 6000),
(122, 'Ibrahim', 'IT', 8000),
(123, 'Vikram', 'IT', 8000),
(124, 'Vikram', 'IT', 8000),
(125, 'Dheeraj', 'IT', 11000),
(126, 'Dheeraj', 'IT', 12000),
(127, 'Dheeraj', 'IT', 12000);

-- practice_query_3.sql
CREATE TABLE employee_1 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    dept_name VARCHAR(50),
    salary INT
);
INSERT INTO employee_1 (emp_id, emp_name, dept_name, salary) VALUES
(101, 'Mohan', 'Admin', 4000),
(102, 'Rajkumar', 'HR', 3000),
(103, 'Akbar', 'IT', 4000),
(104, 'Dorvin', 'Finance', 6500),
(105, 'Rohit', 'HR', 3000),
(106, 'Rajesh', 'Finance', 5000),
(107, 'Preet', 'HR', 7000),
(108, 'Maryam', 'Admin', 4000),
(109, 'Sanjay', 'IT', 6500),
(110, 'Vasudha', 'IT', 7000),
(111, 'Melinda', 'IT', 8000),
(112, 'Komal', 'IT', 10000),
(113, 'Gautham', 'Admin', 2000),
(114, 'Manisha', 'HR', 3000),
(115, 'Chandni', 'IT', 4500),
(116, 'Satya', 'Finance', 6500),
(117, 'Adarsh', 'HR', 3500),
(118, 'Tejaswi', 'Finance', 5500),
(119, 'Cory', 'HR', 8000),
(120, 'Monica', 'Admin', 5000),
(121, 'Rosalin', 'IT', 6000),
(122, 'Ibrahim', 'IT', 8000),
(123, 'Vikram', 'IT', 8000),
(124, 'Dheeraj', 'IT', 11000);

-- practice_query_4.sql
CREATE TABLE doctors (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    speciality VARCHAR(100),
    hospital VARCHAR(50),
    city VARCHAR(50),
    consultation_fee INT
);
INSERT INTO doctors (id, name, speciality, hospital, city, consultation_fee) VALUES
(1, 'Dr. Shashank', 'Ayurveda', 'Apollo Hospital', 'Bangalore', 2500),
(2, 'Dr. Abdul', 'Homeopathy', 'Fortis Hospital', 'Bangalore', 2000),
(3, 'Dr. Shwetha', 'Homeopathy', 'KMC Hospital', 'Manipal', 1000),
(4, 'Dr. Murphy', 'Dermatology', 'KMC Hospital', 'Manipal', 1500),
(5, 'Dr. Farhana', 'Physician', 'Gleneagles Hospital', 'Bangalore', 1700),
(6, 'Dr. Maryam', 'Physician', 'Gleneagles Hospital', 'Bangalore', 1500),
(8, 'Dr. Mehak', 'Dermi', 'Apollo Hospital', 'Bangalore', 2100),
(9, 'Dr. KKK', 'Dermi', 'Apollo Hospital', 'Bangalore', 2000),
(10, 'Dr. PPP', 'Dermi', 'Apollo Hospital', 'Bangalore', 2800);

-- practice_query_5.sql
CREATE TABLE login_details (
    login_id INT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    login_date DATE
);
INSERT INTO login_details (login_id, user_name, login_date) VALUES
(101, 'Michael', CURRENT_DATE),
(102, 'James', CURRENT_DATE),
(103, 'Stewart', CURRENT_DATE + INTERVAL '1 day'),
(104, 'Stewart', CURRENT_DATE + INTERVAL '1 day'),
(105, 'Stewart', CURRENT_DATE + INTERVAL '1 day'),
(106, 'Michael', CURRENT_DATE + INTERVAL '2 day'),
(107, 'Michael', CURRENT_DATE + INTERVAL '2 day'),
(108, 'Stewart', CURRENT_DATE + INTERVAL '3 day'),
(109, 'Stewart', CURRENT_DATE + INTERVAL '3 day'),
(110, 'James', CURRENT_DATE + INTERVAL '4 day'),
(111, 'James', CURRENT_DATE + INTERVAL '4 day'),
(112, 'James', CURRENT_DATE + INTERVAL '5 day'),
(113, 'James', CURRENT_DATE + INTERVAL '6 day');

-- practice_query_6.sql
CREATE TABLE students (
    id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL
);
INSERT INTO students VALUES
(1, 'James'),
(2, 'Michael'),
(3, 'George'),
(4, 'Stewart'),
(5, 'Robin');

-- practice_query_7.sql
CREATE TABLE weather (
    id INT,
    city VARCHAR(50),
    temperature INT,
    day DATE
);
INSERT INTO weather VALUES
(1, 'London', 1, CURRENT_DATE + INTERVAL '1 day'),
(2, 'London', -2, CURRENT_DATE + INTERVAL '1 day'),
(3, 'London', 4, CURRENT_DATE + INTERVAL '1 day'),
(4, 'London', 1, CURRENT_DATE + INTERVAL '1 day'),
(5, 'London', -2, CURRENT_DATE + INTERVAL '1 day'),
(6, 'London', -5, CURRENT_DATE + INTERVAL '1 day'),
(7, 'London', -7, CURRENT_DATE + INTERVAL '1 day'),
(8, 'London', 5, CURRENT_DATE + INTERVAL '1 day');

-- practice_query_8.sql
CREATE TABLE event_category (
    event_name VARCHAR(50),
    category VARCHAR(100)
);
CREATE TABLE physician_speciality (
    physician_id INT,
    speciality VARCHAR(50)
);
CREATE TABLE patient_treatment (
    patient_id INT,
    event_name VARCHAR(50),
    physician_id INT
);
INSERT INTO event_category VALUES
('Chemotherapy','Procedure'),
('Radiation','Procedure'),
('Immunosuppressants','Prescription'),
('BTKI','Prescription'),
('Biopsy','Test');
INSERT INTO physician_speciality VALUES
(1000,'Radiologist'),
(2000,'Oncologist');
-- (Add more as needed...)

-- practice_query_9.sql
CREATE TABLE patient_logs (
    account_id INT,
    date DATE,
    patient_id INT
);
INSERT INTO patient_logs VALUES
(1, '2020-01-02', 100),
(1, '2020-01-27', 200),
(2, '2020-01-01', 300),
(2, '2020-01-21', 400),
(2, '2020-01-21', 300),
(2, '2020-01-01', 500),
(3, '2020-01-20', 400),
(1, '2020-03-04', 500),
(3, '2020-01-20', 450);

-- practice_query_10.sql
CREATE TABLE source (
    id SMALLINT,
    name VARCHAR(255)
);
CREATE TABLE target (
    id SMALLINT,
    name VARCHAR(255)
);