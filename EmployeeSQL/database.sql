CREATE TABLE Department (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(40) NOT NULL
);

CREATE TABLE Title (
    title_id CHAR(5) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

CREATE TABLE Employee (
    emp_no INT PRIMARY KEY,
    emp_title_id CHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES Title(title_id)
);

CREATE TABLE DepartmentManager (
    dept_no CHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES Department(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employee(emp_no)
);

CREATE TABLE DepartmentEmployee (
    emp_no INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employee(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Department(dept_no)
);

CREATE TABLE Salary (
    emp_no INT NOT NULL,
    salary FLOAT NOT NULL,
    PRIMARY KEY (emp_no, Salary),
    FOREIGN KEY (emp_no) REFERENCES Employee(emp_no)
);

