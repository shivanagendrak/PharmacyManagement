create database pharmacy_management;
use pharmacy_management;
CREATE TABLE PATIENT (
 PATIENT_ID VARCHAR(15) NOT NULL,
 Patient_Name VARCHAR(16) NOT NULL,
 Sex CHAR,
 address VARCHAR(16),
 contact_info int(30),
 PRIMARY KEY (PATIENT_ID)
);
INSERT INTO PATIENT (PATIENT_ID, Patient_Name, Sex, address, contact_info)
VALUES 
 ('P001', 'John Smith', 'M', '123 Main St', 1234567),
 ('P002', 'Jane Doe', 'F', '456 Park Ave', 9876543),
 ('P003', 'Mike Johnson', 'M', '789 Elm St', 5551234),
 ('P004', 'Emily Davis', 'F', '321 Oak St', 5559876),
 ('P005', 'David Lee', 'M', '567 Maple Ave', 8885551),
 ('P006', 'Sarah Brown', 'F', '234 Pine St', 7774448),
 ('P007', 'Tom Wilson', 'M', '678 Cherry Ln', 2223334),
 ('P008', 'Amy Garcia', 'F', '890 Orange St', 1112223),
 ('P009', 'Kevin Nguyen', 'M', '432 Vine Rd', 9998887),
 ('P010', 'Lisa Kim', 'F', '765 Cedar Blvd', 4445556),
 ('P011', 'Brian Lee', 'M', '321 Oak St', 5559876),
 ('P012', 'Jennifer Chen', 'F', '567 Maple Ave', 8885551),
 ('P013', 'Daniel Hernandez', 'M', '234 Pine St', 7774448),
 ('P014', 'Amanda Martin', 'F', '678 Cherry Ln', 2223334),
 ('P015', 'Alexis Wilson', 'F', '890 Orange St', 1112223),
 ('P016', 'Joshua Davis', 'M', '432 Vine Rd', 9998887),
 ('P017', 'Erica Kim', 'F', '765 Cedar Blvd', 4445556),
 ('P018', 'Michael Lee', 'M', '321 Oak St', 5559876),
 ('P019', 'Sophia Rodriguez', 'F', '567 Maple Ave', 8885551),
 ('P020', 'William Johnson', 'M', '234 Pine St', 7774448),
 ('P021', 'Natalie Brown', 'F', '678 Cherry Ln', 2223334),
 ('P022', 'Christopher ', 'M', '890 Orange St', 1112223),
 ('P023', 'Olivia Davis', 'F', '432 Vine Rd', 9998887),
 ('P024', 'Brandon Kim', 'M', '765 Cedar Blvd', 4445556),
 ('P025', 'Samantha Lee', 'F', '321 Oak St', 5559876),
 ('P026', 'Ethan Garcia', 'M', '567 Maple Ave', 8885551),
 ('P027', 'Isabella Nguyen', 'F', '234 Pine St', 7774448),
 ('P028', 'Anthony ', 'M', '678 Cherry Ln', 2223334),
 ('P029', 'Jessica Martin', 'F', '890 Orange St', 1112223),
 ('P030', 'Ryan Wilson', 'M', '432 Vine Rd', 9998887),
 ('P031', 'Taylor Kim', 'F', '765 Cedar Blvd', 4445551);
select * from patient;
CREATE TABLE DOCTOR (
 Doctor_Id VARCHAR(15) NOT NULL,
 Patient_Id VARCHAR(15) NOT NULL,
 Doctor_name VARCHAR(16),
 Medicine_Name VARCHAR(25) NOT NULL,
 Doctor_info INT(10),
 UNIQUE (Doctor_id),
 PRIMARY KEY (Doctor_Id),
 FOREIGN KEY (Patient_Id) REFERENCES PATIENT(Patient_Id)
);
INSERT INTO DOCTOR (Doctor_Id, Patient_Id, Doctor_name, Medicine_Name, Doctor_info) VALUES ('D001', 'P001', 'Dr. Smith', 'Medicine1', 1234567);
INSERT INTO DOCTOR (Doctor_Id, Patient_Id, Doctor_name, Medicine_Name, Doctor_info) VALUES ('D002', 'P002', 'Dr. Johnson', 'Medicine2', 2345678
);
INSERT INTO DOCTOR (Doctor_Id, Patient_Id, Doctor_name, Medicine_Name, Doctor_info) VALUES ('D003', 'P003', 'Dr. Brown', 'Medicine3', 3456789);
INSERT INTO DOCTOR (Doctor_Id, Patient_Id, Doctor_name, Medicine_Name, Doctor_info) VALUES ('D004', 'P004', 'Dr. Davis', 'Medicine4', 4567890);
INSERT INTO DOCTOR (Doctor_Id, Patient_Id, Doctor_name, Medicine_Name, Doctor_info) VALUES ('D005', 'P005', 'Dr. Wilson', 'Medicine5', 5678901
);
INSERT INTO DOCTOR (Doctor_Id, Patient_Id, Doctor_name, Medicine_Name, Doctor_info) VALUES ('D006', 'P006', 'Dr. Rodriguez', 'Medicine6', 
6789012);
INSERT INTO DOCTOR (Doctor_Id, Patient_Id, Doctor_name, Medicine_Name, Doctor_info) VALUES ('D007', 'P007', 'Dr. Garcia', 'Medicine7', 7890123
);
INSERT INTO DOCTOR (Doctor_Id, Patient_Id, Doctor_name, Medicine_Name, Doctor_info) VALUES ('D008', 'P008', 'Dr. Martinez', 'Medicine8', 
8901234);
INSERT INTO DOCTOR (Doctor_Id, Patient_Id, Doctor_name, Medicine_Name, Doctor_info) VALUES ('D009', 'P009', 'Dr. Hernandez', 'Medicine9', 
9012345);
INSERT INTO DOCTOR (Doctor_Id, Patient_Id, Doctor_name, Medicine_Name, Doctor_info) VALUES ('D010', 'P010', 'Dr. Lopez', 'Medicine10', 1234567
);
INSERT INTO DOCTOR (Doctor_Id, Patient_Id, Doctor_name, Medicine_Name, Doctor_info) VALUES ('D011', 'P011', 'Dr. Perez', 'Medicine11', 2345678
);
INSERT INTO DOCTOR (Doctor_Id, Patient_Id, Doctor_name, Medicine_Name, Doctor_info) VALUES ('D012', 'P012', 'Dr. Gonzalez', 'Medicine12', 
3456789);
INSERT INTO DOCTOR (Doctor_Id, Patient_Id, Doctor_name, Medicine_Name, Doctor_info) VALUES ('D013', 'P013', 'Dr. Green', 'Medicine13', 4567890
);
INSERT INTO DOCTOR (Doctor_Id, Patient_Id, Doctor_name, Medicine_Name, Doctor_info) VALUES ('D014', 'P014', 'Dr. Taylor', 'Medicine14', 5678901
);
INSERT INTO DOCTOR (Doctor_Id, Patient_Id, Doctor_name, Medicine_Name, Doctor_info) VALUES ('D015', 'P015', 'Dr. Anderson', 'Medicine15', 
6789012);
select * from doctor;
CREATE TABLE HOSPITAL (
 Hospital_Id VARCHAR(15) NOT NULL UNIQUE,
 Hospital_name VARCHAR(15) NOT NULL,
 Doctor_Id VARCHAR(15) NOT NULL,
 Location VARCHAR(16),
 Pincode INT(6),
 PRIMARY KEY (Hospital_Id),
 FOREIGN KEY (Doctor_Id) REFERENCES Doctor(Doctor_Id)
);
INSERT INTO HOSPITAL (Hospital_Id, Hospital_name, Doctor_Id, Location, Pincode) VALUES
('H001', 'Mary Hospital', 'D001', 'New York', 10001),
('H002', 'Memo Hospital', 'D002', 'Chicago', 60601),
('H003', 'Mercy Hospital', 'D003', 'Los Angeles', 90001),
('H004', 'Presby Hospital', 'D004', 'Houston', 77001),
('H005', 'Johns Hospital', 'D005', 'Baltimore', 21201),
('H006', 'Mayo Clinic', 'D006', 'Rochester', 55901),
('H007', 'Cleve Clinic', 'D007', 'Cleveland', 44195),
('H008', 'shiva Hospital', 'D008', 'Boston', 02114),
('H009', 'Brig Hospital', 'D009', 'Boston', 02115),
('H010', 'UCSF Center', 'D010', 'San Francisco', 94143);
CREATE TABLE INSURANCE (
 Insurance_Id VARCHAR(15) NOT NULL UNIQUE,
 PATIENT_ID VARCHAR(15) NOT NULL,
 Patient_name VARCHAR(16) NOT NULL,
 Patient_contact INT(10),
 Insurance_amount FLOAT,
 PRIMARY KEY (Insurance_Id),
 FOREIGN KEY (PATIENT_ID) REFERENCES PATIENT(PATIENT_ID)
);
INSERT INTO INSURANCE (Insurance_Id, PATIENT_ID, Patient_name, Patient_contact, Insurance_amount) VALUES
('INS001', 'P001', 'John Smith', 1234567, 5000.00),
('INS002', 'P002', 'Jane Doe', 9876543, 10000.00),
('INS003', 'P003', 'Mike Johnson', 5551234, 7500.00),
('INS004', 'P004', 'Emily Davis', 5559876, 3000.00),
('INS005', 'P005', 'David Lee', 8885551, 8000.00),
('INS006', 'P006', 'Sarah Brown', 7774448, 6000.00),
('INS007', 'P007', 'Tom Wilson', 2223334, 4500.00),
('INS008', 'P008', 'Amy Garcia', 1112223, 12000.00),
('INS009', 'P009', 'Kevin Nguyen', 9998887, 10000.00),
('INS010', 'P010', 'Lisa Kim', 4445556, 7000.00),
('INS011', 'P011', 'Brian Lee', 5559876, 2000.00),
('INS012', 'P012', 'Jennifer Chen', 8885551, 5000.00),
('INS013', 'P013', 'Daniel Hernandez', 7774448, 6500.00),
('INS014', 'P014', 'Amanda Martin', 2223334, 4000.00),
('INS015', 'P015', 'Alexis Wilson', 1112223, 8000.00),
('INS016', 'P016', 'Joshua Davis', 9998887, 3000.00),
('INS017', 'P017', 'Erica Kim', 4445556, 5500.00),
('INS018', 'P018', 'Michael Lee', 5559876, 7000.00),
('INS019', 'P019', 'Sophia Rodriguez', 8885551, 9000.00),
('INS020', 'P020', 'William Johnson', 7774448, 6000.00),
('INS021', 'P021', 'Natalie Brown', 2223334, 7500.00),
('INS022', 'P022', 'Christopher', 1112223, 4000.00),
('INS023', 'P023', 'Olivia Davis', 9998887, 9500.00),
('INS024', 'P024', 'Brandon Kim', 4445556, 5500.00),
('INS025', 'P025', 'Samantha Lee', 5559876, 3000.00),
('INS026', 'P026', 'Ethan Garcia', 8885551, 4000.00);
CREATE TABLE BILL (
 Bill_id INT(10) NOT NULL UNIQUE,
 Bill_amount FLOAT, 
 PATIENT_ID VARCHAR(15) NOT NULL,
 Doctor_name VARCHAR(15) NOT NULL,
 Date_details DATE,
 PRIMARY KEY (Bill_id),
 FOREIGN KEY (PATIENT_ID) REFERENCES PATIENT(PATIENT_ID)
);
INSERT INTO BILL (Bill_Id, PATIENT_ID, Doctor_Id, Hospital_Id, Test_Id, Bill_amount)
VALUES
 ('B001', 'P001', 'D001', 'H001', 'T001', 150.75),
 ('B002', 'P002', 'D002', 'H002', 'T002', 225.50),
 ('B003', 'P003', 'D003', 'H003', 'T003', 500.00),
 ('B004', 'P004', 'D004', 'H004', 'T004', 325.25),
 ('B005', 'P005', 'D005', 'H005', 'T005', 1000.00),
 ('B006', 'P006', 'D006', 'H006', 'T006', 75.50),
 ('B007', 'P007', 'D007', 'H007', 'T007', 225.50),
 ('B008', 'P008', 'D008', 'H008', 'T008', 150.75),
 ('B009', 'P009', 'D009', 'H009', 'T009', 325.25),
 ('B010', 'P010', 'D010', 'H010', 'T010', 1000.00),
 ('B011', 'P011', 'D011', 'H011', 'T011', 500.00),
 ('B012', 'P012', 'D012', 'H012', 'T012', 75.50),
 ('B013', 'P013', 'D013', 'H013', 'T013', 225.50),
 ('B014', 'P014', 'D014', 'H014', 'T014', 150.75),
 ('B015', 'P015', 'D015', 'H015', 'T015', 325.25),
 ('B016', 'P016', 'D016', 'H016', 'T016', 1000.00),
 ('B017', 'P017', 'D017', 'H017', 'T017', 500.00),
 ('B018', 'P018', 'D018', 'H018', 'T018', 75.50),
 ('B019', 'P019', 'D019', 'H019', 'T019', 225.50),
 ('B020', 'P020', 'D020', 'H020', 'T020', 150.75),
 ('B021', 'P021', 'D021', 'H021', 'T021', 325.25),
 ('B022', 'P022', 'D022', 'H022', 'T022', 1000.00),
 ('B023', 'P023', 'D023', 'H023', 'T023', 500.00),
 ('B024', 'P024', 'D024', 'H024', 'T024', 75.50),
 ('B025', 'P025', 'D025', 'H025', 'T025', 225.50),
 ('B026', 'P026', 'D026', 'H026', 'T026', 150.75),
 ('B027', 'P027', 'D027', 'H027', 'T027', 325.25),
 ('B028', 'P028', 'D028', 'H028', 'T028', 1000.220);
CREATE TABLE PHARMACY (
 Pharmacy_code VARCHAR(15) NOT NULL UNIQUE,
 Pharmacy_name VARCHAR(16),
 Pharmacy_location VARCHAR(16),
 Pharmacy_contact INT(10),
 PRIMARY KEY (Pharmacy_code)
);
INSERT INTO PHARMACY (Pharmacy_code, Pharmacy_name, Pharmacy_location, Pharmacy_contact)
VALUES
('PH001', 'ABC Pharmacy', '123 Main St', 1234567),
('PH002', 'XYZ Pharmacy', '456 Park Ave', 9876543),
('PH003', 'Elite Pharmacy', '789 Elm St', 5551234),
('PH004', 'Green Pharmacy', '321 Oak St', 5559876),
('PH005', 'Central Pharmacy', '567 Maple Ave', 8885551),
('PH006', 'Best Care Pharmacy', '234 Pine St', 7774448),
('PH007', 'Wellness Pharmacy', '678 Cherry Ln', 2223334),
('PH008', 'Reliable Pharmacy', '890 Orange St', 1112223),
('PH009', 'Quick Stop Pharmacy', '432 Vine Rd', 9998887),
('PH010', 'ProMed Pharmacy', '765 Cedar Blvd', 4445556);
CREATE TABLE MEDICINE (
 Medicine_code INT(10) NOT NULL UNIQUE,
 Medicine_name VARCHAR(16),
 Phama_code VARCHAR(15),
 Doctor_Id VARCHAR(15) NOT NULL,
 expiry_date DATE,
 Medical_composition VARCHAR(16),
 PRIMARY KEY (Medicine_code),
 FOREIGN KEY (Doctor_Id) REFERENCES Doctor(Doctor_Id),
 FOREIGN KEY (Phama_code) REFERENCES Pharmacy(Pharmacy_code)
);
INSERT INTO Medicine (Medicine_code, Medicine_name, Medicine_cost)
VALUES 
 (101, 'Aspirin', 3.99),
 (102, 'Ibuprofen', 5.99),
 (103, 'Acetaminophen', 4.99),
 (104, 'Lisinopril', 10.99),
 (105, 'Metformin', 8.99);
 
CREATE TABLE SALES (
 Sales_product_id VARCHAR(15) NOT NULL UNIQUE,
 Pharmacy_code VARCHAR(15) NOT NULL,
 Medicine_code INT(10) NOT NULL,
 Date_details DATE,
 Item_Count INT,
 total_amount FLOAT,
 PRIMARY KEY (Sales_product_id),
 FOREIGN KEY (Pharmacy_code) REFERENCES Pharmacy(Pharmacy_code),
 FOREIGN KEY (Medicine_code) REFERENCES Medicine(Medicine_code)
);
INSERT INTO SALES (Sales_product_id, Pharmacy_code, Medicine_code, Date_details, Item_Count, total_amount)
VALUES 
('SP001', 'PH001', 1001, '2022-01-01', 5, 50.0),
('SP002', 'PH001', 1002, '2022-01-02', 3, 30.0),
('SP003', 'PH001', 1003, '2022-01-03', 2, 20.0),
('SP004', 'PH002', 1001, '2022-01-04', 4, 40.0),
('SP005', 'PH002', 1002, '2022-01-05', 6, 60.0),
('SP006', 'PH002', 1003, '2022-01-06', 1, 10.0),
('SP007', 'PH003', 1001, '2022-01-07', 2, 20.0),
('SP008', 'PH003', 1002, '2022-01-08', 4, 40.0),
('SP009', 'PH003', 1003, '2022-01-09', 3, 30.0),
('SP010', 'PH004', 1001, '2022-01-10', 6, 60.0),
('SP011', 'PH004', 1002, '2022-01-11', 2, 20.0),
('SP012', 'PH004', 1003, '2022-01-12', 4, 40.0),
('SP013', 'PH005', 1001, '2022-01-13', 3, 30.0),
('SP014', 'PH005', 1002, '2022-01-14', 5, 50.0),
('SP015', 'PH005', 1003, '2022-01-15', 1, 10.0),
('SP016', 'PH006', 1001, '2022-01-16', 4, 40.0),
('SP017', 'PH006', 1002, '2022-01-17', 3, 30.0),
('SP018', 'PH006', 1003, '2022-01-18', 2, 20.0),
('SP019', 'PH007', 1001, '2022-01-19', 1, 10.0),
('SP020', 'PH007', 1002, '2022-01-20', 5, 50.0);
CREATE TABLE SUPPLIER (
 Supplier_name VARCHAR(16),
 Supplier_Id VARCHAR(15) NOT NULL UNIQUE,
 Medicine_code INT(10) NOT NULL UNIQUE,
 Amount_quoted FLOAT,
 Date_details DATE,
 PRIMARY KEY (Supplier_Id),
 FOREIGN KEY (Medicine_code) REFERENCES Medicine(Medicine_code)
);
INSERT INTO Supplier (Supplier_name, Supplier_Id, Medicine_code, Amount_quoted, Date_details)
VALUES 
 ('ABC Pharmacy', 'S001', 101, 2.99, '2022-03-01'),
 ('XYZ Pharmacy', 'S002', 102, 4.99, '2022-03-02'),
 ('LMN Pharmacy', 'S003', 103, 3.99, '2022-03-03'),
 ('PQR Pharmacy', 'S004', 104, 9.99, '2022-03-04'),
 ('EFG Pharmacy', 'S005', 105, 7.99, '2022-03-05');
 
CREATE TABLE NOTIFICATION (
 NOTIFICATION_ID INT(10) NOT NULL AUTO_INCREMENT,
 PATIENT_ID VARCHAR(15) NOT NULL,
 MESSAGE VARCHAR(100) NOT NULL,
 TIME_DETAILS TIME,
 DATE_DETAILS DATE,
 PRIMARY KEY (NOTIFICATION_ID),
 FOREIGN KEY (PATIENT_ID) REFERENCES PATIENT(PATIENT_ID)
);
INSERT INTO NOTIFICATION (PATIENT_ID, MESSAGE, TIME_DETAILS, DATE_DETAILS)
VALUES ('P001', 'Your appointment has been scheduled for tomorrow', '13:00:00', '2023-03-16'),
 ('P002', 'Your lab test results are available', '10:30:00', '2023-03-17'),
 ('P003', 'Your prescription has been refilled', '15:45:00', '2023-03-18'),
 ('P004', 'Your next appointment is in 2 weeks', '09:00:00', '2023-03-19'),
 ('P005', 'Your insurance has been updated', '14:15:00', '2023-03-20');
show databases;