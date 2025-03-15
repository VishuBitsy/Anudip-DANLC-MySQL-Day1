# Student Management System Database

This repository contains MySQL scripts for creating a **Student Management System** database. The scripts are structured into separate files for better organization.

## 📌 Project Structure
```
📂 StudentManagementSystem
│── 📜 create_database.sql         # Script to create the database
│── 📜 student_table.sql           # Script to create Student table
│── 📜 course_table.sql            # Script to create Course table
│── 📜 instructor_table.sql        # Script to create Instructor table
│── 📜 enrollment_table.sql        # Script to create Enrollment table
│── 📜 score_table.sql             # Script to create Score table
│── 📜 feedback_table.sql          # Script to create Feedback table
│── 📜 emergency_contact.sql       # Emergency contact database design
│── 📜 README.md                   # Project Documentation
```

## 📂 Database Schema
The database includes the following tables:

### 1️⃣ Student Table
Stores student personal information.
```sql
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);
```

### 2️⃣ Course Table
Stores information about available courses.
```sql
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseTitle VARCHAR(100),
    Credits INT
);
```

### 3️⃣ Instructor Table
Stores instructor details.
```sql
CREATE TABLE Instructor (
    InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);
```

### 4️⃣ Enrollment Table
Maintains student-course-instructor relationships.
```sql
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    EnrollmentDate DATE,
    StudentID INT,
    CourseID INT,
    InstructorID INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
);
```

### 5️⃣ Score Table
Stores student scores in courses.
```sql
CREATE TABLE Score (
    ScoreID INT PRIMARY KEY,
    CourseID INT,
    StudentID INT,
    DateOfExam DATE,
    CreditObtained INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
```

### 6️⃣ Feedback Table
Contains student feedback for instructors.
```sql
CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY,
    StudentID INT,
    Date DATE,
    InstructorName VARCHAR(100),
    Feedback TEXT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
```

### 7️⃣ Emergency Contact Table
Stores emergency contact details for employees.
```sql
CREATE TABLE EmergencyContact (
    ContactID INT PRIMARY KEY,
    EmployeeID INT,
    ContactName VARCHAR(100),
    Relationship VARCHAR(50),
    ContactPhone VARCHAR(15),
    ContactEmail VARCHAR(100),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);
```

## 🔥 How to Use
1️⃣ Clone the repository:
```bash
https://github.com/VishuBitsy/Anudip-DANLC-MySQL-Day1.git
```

2️⃣ Navigate to the project folder:
```bash
cd StudentManagementSystem
```

3️⃣ Open MySQL and run the scripts in order:
```sql
source create_database.sql;
source student_table.sql;
source course_table.sql;
source instructor_table.sql;
source enrollment_table.sql;
source score_table.sql;
source feedback_table.sql;
source emergency_contact.sql;
```

## 📢 Contributing
Contributions are welcome! If you find any issues or want to improve this project, feel free to fork and submit a pull request. 😊



---
✨ Developed with 💙 by Vishu❣️
