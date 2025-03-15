CREATE TABLE EmergencyContact (
    ContactID INT PRIMARY KEY,
    EmployeeID INT,
    ContactName VARCHAR(100),
    Relationship VARCHAR(50),
    ContactPhone VARCHAR(15),
    ContactEmail VARCHAR(100),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);
