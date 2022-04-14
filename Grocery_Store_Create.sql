-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-09 06:38:13.777

-- tables
-- Table: Customer
CREATE TABLE Customer (
    Customer_Id int  NOT NULL,
    Customer_Name varchar(50)  NOT NULL,
    Phone_Number int  NOT NULL,
    GroceryStore_Store_Id varchar(20)  NOT NULL,
    CONSTRAINT Customer_pk PRIMARY KEY (Customer_Id)
);

-- Table: Employee
CREATE TABLE Employee (
    Employee_Id int  NOT NULL,
    Employee_Name varchar(25)  NOT NULL,
    Employee_Hire_Date date  NOT NULL,
    GroceryStore_Store_Id varchar(20)  NOT NULL,
    CONSTRAINT Employee_pk PRIMARY KEY (Employee_Id)
);

-- Table: GroceryStore
CREATE TABLE GroceryStore (
    Store_Id varchar(20)  NOT NULL,
    Store_Name varchar(50)  NOT NULL,
    Contact_Number int  NOT NULL,
    CONSTRAINT GroceryStore_pk PRIMARY KEY (Store_Id)
);

-- Table: Payment
CREATE TABLE Payment (
    Payment_Id int  NOT NULL,
    Payment_Date date  NOT NULL,
    Cost decimal  NOT NULL,
    Product_Product_Id int  NOT NULL,
    Employee_Employee_Id int  NOT NULL,
    Customer_Customer_Id int  NOT NULL,
    CONSTRAINT Payment_pk PRIMARY KEY (Payment_Id)
);

-- Table: Product
CREATE TABLE Product (
    Product_Id int  NOT NULL,
    Name varchar(50)  NOT NULL,
    Availability varchar(3)  NOT NULL,
    Employee_Employee_Id int  NOT NULL,
    CONSTRAINT Product_pk PRIMARY KEY (Product_Id)
);

-- foreign keys
-- Reference: Customer_Grocery Store (table: Customer)
ALTER TABLE Customer ADD CONSTRAINT Customer_Grocery Store
    FOREIGN KEY (GroceryStore_Store_Id)
    REFERENCES GroceryStore (Store_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Employee_Grocery Store (table: Employee)
ALTER TABLE Employee ADD CONSTRAINT Employee_Grocery Store
    FOREIGN KEY (GroceryStore_Store_Id)
    REFERENCES GroceryStore (Store_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Payment_Customer (table: Payment)
ALTER TABLE Payment ADD CONSTRAINT Payment_Customer
    FOREIGN KEY (Customer_Customer_Id)
    REFERENCES Customer (Customer_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Payment_Employee (table: Payment)
ALTER TABLE Payment ADD CONSTRAINT Payment_Employee
    FOREIGN KEY (Employee_Employee_Id)
    REFERENCES Employee (Employee_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Payment_Product (table: Payment)
ALTER TABLE Payment ADD CONSTRAINT Payment_Product
    FOREIGN KEY (Product_Product_Id)
    REFERENCES Product (Product_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Product_Employee (table: Product)
ALTER TABLE Product ADD CONSTRAINT Product_Employee
    FOREIGN KEY (Employee_Employee_Id)
    REFERENCES Employee (Employee_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

