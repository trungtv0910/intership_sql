-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 20, 2022 at 08:35 AM
-- Server version: 5.7.33
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql_test_thuctap`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `region_id`) VALUES
(1, 'Viet Nam\r\n', 1),
(2, 'Lao\r\n', 2),
(3, 'Thai Lan\r\n', 2),
(4, 'Indo', 3),
(5, 'China', 1);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `manager_id`, `location_id`) VALUES
(1, 'tuyen dung', 1, 2),
(2, 'Seo', 1, 1),
(3, 'Hành chính', 2, 3),
(4, 'đầu tư', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hire_date` datetime DEFAULT NULL,
  `job_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission_pct` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `phone`, `hire_date`, `job_id`, `salary`, `commission_pct`, `department_id`) VALUES
(1, 'tran van', 'tai', 'tai@gmail.com', '09712444221', '2022-08-10 12:45:38', '123', '9000000', 12345, 1),
(2, 'Nguyễn Trung', 'Tấn', 'tan@gmail.com', '0955551223', '2022-08-10 00:00:00', '121', '3000000', 993, 2),
(3, 'tran van', 'hai', 'hai@gmail.com', '09712442', '2022-08-19 00:00:00', '123', '8000000', 1333, 1),
(4, 'Nguyễn Thị', 'xuan', 'xuan@gmail.com', '09712442003', '2022-08-20 00:00:00', '124', '12000000', 9991, 3),
(5, 'Nguyễn', 'buon', 'bon@gmail.com', '0395122221', '2022-08-20 00:00:00', '123', '2000000', 9991, 2);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_salary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_salary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `title`, `min_salary`, `max_salary`, `name`) VALUES
('2', 'A', '15000', '3', 'qut'),
('123', 'AD_PRES', '150000', '350000', 'quan tri admin'),
('121', 'IT_PROG', '120000', '300000', 'lap trinh vien'),
('124', 'ST_MAN', '450000', '750000', 'ST man'),
('122', 'ST_CLERK', '350000', '450000', 'ST clerk'),
('125', 'SH_CLERK', '550000', '750000', 'SH clerk');

-- --------------------------------------------------------

--
-- Table structure for table `job_grades`
--

CREATE TABLE `job_grades` (
  `level` int(11) DEFAULT NULL,
  `lowest_sal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highest_sal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_grades`
--

INSERT INTO `job_grades` (`level`, `lowest_sal`, `highest_sal`, `id`) VALUES
(1, '300000', '499000', 1),
(2, '500000', '599000', 2),
(3, '400000', '899000', 3),
(4, '600000', '999000', 4),
(5, '200000', '599000', 5);

-- --------------------------------------------------------

--
-- Table structure for table `job_history`
--

CREATE TABLE `job_history` (
  `id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_history`
--

INSERT INTO `job_history` (`id`, `start_date`, `end_date`, `job_id`, `department_id`) VALUES
(1, '2022-02-04 00:00:00', '2022-07-19 00:00:00', 123, 2),
(2, '2022-03-12 00:00:00', '2022-05-19 00:00:00', 121, 1),
(3, '2022-02-04 00:00:00', '2022-07-29 00:00:00', 122, 3),
(4, '2022-01-01 00:00:00', '2022-08-01 00:00:00', 125, 4),
(5, '2022-02-03 00:00:00', '2022-07-09 00:00:00', 123, 5);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name`) VALUES
(1, 'Huế'),
(2, 'Đà Nẵng'),
(3, 'Sài Gòn'),
(4, 'Hà Nội'),
(5, 'Quảng Ninh');




CREATE TABLE `localtion` ( `id` int(11) NOT NULL, `address` text NOT NULL, `postal_code` varchar(255) NOT NULL, `city` varchar(255) NOT NULL, `country_id` int(11) NOT NULL, PRIMARY KEY (`ID`) );


INSERT INTO `localtion` (`id`, `address`, `postal_code`, `city`, `country_id`) VALUES
(1, 'Thừa thiên huế', '24400', 'Hue city', 1),
(2, ' 5 Bang Coc', '44400', 'Bang Coc', 2),
(3, ' 24 Xiem riep', '50000', 'Ma lai', 3),
(4, '34 Ngu hanh Da Nang', '550000', 'Da Nang', 4),
(5, '3 Ngu hanh Da Nang', '550000', 'Hue', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `localtion`
--
ALTER TABLE `localtion`
  ADD PRIMARY KEY (`id`);
COMMIT;








--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




-- 6 Write a SQL statement to change the email to 'hr@gmail.com' of employees table for those employees who belongs to the 'HR' department.
UPDATE employees set email ="hr@gmail.com" 
WHERE department_id in (SELECT id FROM departments WHERE name ="HR")


--7 Write a SQL statement to change job ID of employee which ID is 2,
-- to SH_CLERK if the employee belongs to department,
-- which ID is 30 and the existing job ID does not start with SH.
UPDATE employees SET job_id = 'SH_CLERK' WHERE id = 2 and department_id =30 and NOT job_id like 'SH%';

-- 8 Write a SQL statement to increase the salary of employees under the department 40, 90 and 110 according to the company rules that, salary will be increased by 25% for the department 40, 15% for department 90 and 10% for the department 110 and the rest of the departments will remain same.
update employees set salary = 
CASE department_id
WHEN 40 THEN salary + salary*0.25
WHEN 90 THEN salary + salary*0.15
WHEN 110 Then salary +salary*0.1
ELSE salary
end 

--9. Write a SQL statement to increase the minimum and maximum salary of PU_CLERK by 2000 as well as the salary for those employees by 20% and commission percent by .10.
UPDATE job as J,employees as E SET
J.min_salary = J.min_salary+ 2000,
J.max_salary = J.max_salary+ 2000,
E.salary = E.salary*1.20,
E.commission_pct = E.commission_pct*1.10
WHERE J.id = 'PU_CLERK' AND E.job_id = 'PU_CLERK'

--10 Write a SQL statement to change name table localtion to locations.
ALTER TABLE localtion
RENAME TO localtions;

-- 11 Write a SQL statement to add a column 'region_id' after 'city' to the table locations.
ALTER TABLE localtions
  ADD regions_id int
    AFTER city ;

-- 12 Write a SQL statement to drop the column city from the table locations.
ALTER TABLE localtions DROP COLUMN city;

--13 Write a SQL statement to add a primary key for a combination of columns location_id and country_id
ALTER TABLE localtions
  RENAME TO locations;
-- drop pri evikey
ALTER TABLE `locations` DROP PRIMARY KEY;

ALTER TABLE locations
ADD CONSTRAINT PK_locations PRIMARY KEY NONCLUSTERED (id,country_id);


--14 Write a SQL statement to drop the existing primary from the table locations on a combination of columns location_id and country_id
ALTER TABLE `locations` DROP PRIMARY KEY;

--15 Write a SQL statement to add a foreign key on job_id column of job_history table referencing to the primary key job_id of jobs table

-- add primary key
ALTER TABLE job
ADD CONSTRAINT PK_id PRIMARY KEY NONCLUSTERED (id);

-- change type column job_id of job_history
ALTER TABLE job_history
MODIFY COLUMN job_id varchar(191);


ALTER TABLE job_history ADD FOREIGN KEY(job_id) REFERENCES job(id);


--16 Write a SQL statement to add an index named indx_job_id on job_id column in the table job_history

ALTER TABLE job_history ADD INDEX indx_job_id (job_id);


--17 Write a query to get first name from employees table after removing white spaces from both side
SELECT TRIM(first_name) from employees 


--18 Write a query to get unique department ID from employee table
select distinct department_id from employees

--19 Write a query to get all employee details from the employee table order by first name, descending
SELECT * FROM employees ORDER By first_name DESC

--20 . Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary.

SELECT id,concat(first_name, last_name) as full_name FROM employees ORDER By salary ASC;

--21 Write a query to get the average salary and number of employees in the employees table
SELECT AVG(salary) as luong, count(id) as soluong_NV  FROM employees;


--22 Write a query to get the number of employees working with the company.
SELECT  count(id) as soluong_NV  FROM employees;

--23 Write a query to get the number of jobs available in the employees table
SELECT count(DISTINCT id) as Soluong_job FROM  employees

--24 Write a query get all first name from employees table in upper case
SELECT UPPER(first_name) FROM employees;

--25 Write a query to get the first 3 characters of first name from employees table.
SELECT SUBSTRING(first_name,1,3) FROM employees;

--26 Write a query to get first name from employees table after removing white spaces from both side
SELECT TRIM(first_name) FROM employees;

--27 Write a query to get the length of the employee names (first_name, last_name) from employees table
SELECT LENGTH(first_name)+LENGTH(last_name) as leght FROM `employees`;

--28 Write a query to check if the first_name fields of the employees table contains numbers
SELECT * FROM employees WHERE first_name LIKE '%[0-9]%';

--29 Write a query to select first 10 records from a table.
SELECT * FROM employees ORDER BY id DESC LIMIT 10;

--30 Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100
SELECT concat(first_name, last_name) as FullName FROM employees WHERE salary not BETWEEN 10000 and 15000
and (department_id = 30 or department_id=100)

--31 Write a query to display the name (first_name, last_name) and hire date for all employees who were hired in 2020
SELECT concat(first_name, last_name) as FullName, hire_date FROM employees WHERE Year(hire_date) = 2020;

--32 Write a query to display the first_name of all employees who have both "b" and "c" in their first name
SELECT first_name as FullName FROM employees WHERE first_name LIKE '%b%' and first_name LIKE '%c%';

--33 Write a query to display the last name of employees whose names have exactly 6 characters.
SELECT * FROM `employees` WHERE LENGTH(first_name)=6;

--34 Write a query to display the last name of employees having 'e' as the third character.
SELECT * FROM `employees` WHERE last_name like '__e%';

--35 Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'.
SELECT * FROM `employees` WHERE last_name IN('BLAKE','SCOTT','KING','FORD');

--36 Write a query to get the maximum salary of an employee working as a Programmer.(IT_PROG)
SELECT MAX(salary) FROM employees INNER JOIN job ON employees.job_id = job.id WHERE job.title like 'IT_PROG';

--37 Write a query to get the average salary and number of employees working the department 3
SELECT AVG(salary), count(id) FROM employees WHERE department_id =3;

--38 Write a query to get the highest, lowest, sum, and average salary of all employees
SELECT MAX(salary) as highest, MIN(salary) as lowest ,sum(salary) as Sum ,AVG(salary) as Avarage FROM employees


--39 Write a query to get the difference between the highest and lowest salaries
select MAX(salary) - MIN(salary) as 'difference' from employees;

--40 Write a query to get the department ID and the total salary payable in each department.
SELECT department_id ,sum(salary) FROM employees GROUP by department_id;

--41 Write a query to get the average salary for all departments employing more than 10 employees.
SELECT department_id ,AVG(salary) FROM employees GROUP BY department_id HAVING COUNT(*)>10;

--42 Write a query to find the name (first_name, last_name) and the salary of the employees who have a higher salary than the employee whose last_name='Bull'.
SELECT first_name,last_name FROM employees WHERE salary >(SELECT salary FROM employees WHERE last_name LIKE '%Bull%');

--43 Write a query to find the name (first_name, last_name) of all employees who works in the IT department.
SELECT first_name,last_name FROM employees INNER JOIN departments on departments.id = employees.department_id WHERE departments.name like '%SEO%';

--44 Write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary
SELECT first_name,last_name, salary FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

--45 Write a query to find the name (first_name, last_name), and salary of the employees who earn the same salary as the minimum salary for all departments.
SELECT first_name,last_name, salary FROM employees WHERE salary = (SELECT MIN(salary) FROM employees);

--46 Write a query to display the employee ID, first name, last name, and department names of all employees.
SELECT employees.id, employees.first_name,employees.last_name , departments.name FROM employees INNER JOIN departments on departments.id = employees.id;

--47 Write a query to find the 5th maximum salary in the employees table.
SELECT salary FROM employees ORDER By salary ASC LIMIT 5;
--48 Write a query to get 3 maximum salaries.
SELECT salary FROM employees ORDER By salary DESC LIMIT 3;

--49 Write a query to find the name (first_name, last name), department ID and name of all the employees.
SELECT employees.first_name, employees.last_name, employees.department_id, departments.name FROM employees INNER JOIN departments on departments.id = employees.department_id;

--50 Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in "Da Nang".
SELECT employees.first_name, employees.last_name, employees.department_id, departments.name FROM employees INNER JOIN departments on departments.id = employees.department_id WHERE departments.name like '%Đà Nẵng%';

--51 Write a query to get the department name and number of employees in the department.
SELECT count(employees.department_id) as soLuongEmployee, departments.name FROM employees INNER JOIN departments on departments.id = employees.department_id GROUP BY employees.department_id, departments.name;

--52 Write a query to get the first name and hire date from employees table where hire date between '2020-01-01' and '1987-06-30'
SELECT first_name,hire_date FROM employees WHERE hire_date BETWEEN '2020-01-01' AND '1987-06-03'

--54 Write a query to get the years in which more than 10 employees joined.
SELECT YEAR(hire_date) FROM employees GROUP BY Year(hire_date) HAVING count(YEAR(hire_date))>2;

--55 Write a query to update the portion of the phone_number in the employees table, within the phone number the substring '124' will be replaced by '999'.
update employees SET phone = REPLACE(phone,'124','999') WHERE phone like '%124%';

--56 Write a query to append '@example.com' to email field
update employees SET email =concat(email,'@example.com');





