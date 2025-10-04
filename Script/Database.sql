--CREATE HOSPITAL DATABASE

CREATE DATABASE SMARTHEALTH;

USE SMARTHEALTH;

--CREATE PATIENTS TABLE

CREATE TABLE Patients (
	Patients_ID INT PRIMARY KEY IDENTITY (100,1),
	First_Name VARCHAR(20),
	Last_Name VARCHAR(20),
	Gender CHAR(1),
	Address VARCHAR(50),
	Date_Of_Birth DATE,
	Insurance VARCHAR (50),
	Email VARCHAR (50),
	Phone_Number VARCHAR(15),
	Emergency_Contact VARCHAR(15),
	Username VARCHAR (30),
	Password VARCHAR(15)
	);

SELECT * FROM Patients;

--CREATE DEPARTMENT TABLE

CREATE TABLE Department (
	Department_ID INT PRIMARY KEY IDENTITY,
	Department_Name VARCHAR (20),
	Head_of_Department VARCHAR(20)
	);

	SELECT * FROM Department

--CREATE DOCTORS TABLE

	CREATE TABLE Doctor (
	Doctor_ID INT PRIMARY KEY,
	First_Name VARCHAR(20),
	Last_Name VARCHAR (20),
	Specialization VARCHAR(20),
	Department_ID INT REFERENCES Department(Department_ID),
	Availability VARCHAR (20) NOT NULL
		CHECK (Availability IN ('Available', 'On Leave', 'Busy')),
	Phone_Number INT,
	Email VARCHAR(30)
	);

	SELECT * FROM Doctor;
	
--CREATE APPOINTMENT TABLE

CREATE TABLE Appointment (
	AppointmentID INT PRIMARY KEY IDENTITY,
	Patiend_ID INT REFERENCES Patients(Patients_ID),
	Doctor_ID INT REFERENCES Doctor(Doctor_ID),
	Appointment_Date DATE,
	Feedback VARCHAR (100),
	Status VARCHAR (20) NOT NULL
		CHECK(Status IN ('Pending', 'Cancelled', 'Completed')),
	Date_left DATE NULL,
	Reschedule DATE NULL
	);

	SELECT * FROM Appointment;

-- CREATE TABLE MEDICAL RECORDS

CREATE TABLE Medical_Records (
	Records_ID INT PRIMARY KEY IDENTITY,
	Patient_ID INT REFERENCES Patients(Patients_ID),
	Doctor_ID INT REFERENCES Doctor(Doctor_ID),
	Diagnosis VARCHAR(50),
	Record_Date DATE NULL,
	Medicine VARCHAR (50),
	Allergies VARCHAR(50)
	);
	
SELECT * FROM Medical_Records;

DELETE FROM Department;
DBCC CHECKIDENT ('Department', RESEED, 1)

--INSERT VALUES INTO PATIENTS TABLE

INSERT INTO Patients (First_Name, Last_Name, Gender, Address, Date_Of_Birth, Insurance, Email, 
Phone_Number, Emergency_Contact, Username, Password)
	VALUES 	
		('John', 'Smith', 'M', '12 Oak Street, Lagos', '1985-04-12', 'Aetna', 'John.Smith@email.com',
		'08031235678', '08098734921', 'Johnsmith85', 'Pass@123'),
		('Mary', 'Johnson', 'F', '24 Palm Ave, Abuja', '1990-04-25', 'Bluecross', 'mary.j@email.com',
		'08144556677', '08022334455', 'mary#2024', 'Mary#2024'),
		('David', 'Williams', 'M', '56 Creek Rd, Port Harcourt', '1978-02-15', 'UnitedHealth', 'David.w@gmail.com', 
		'070111222334', '08155667788', 'davew78', 'davew$567'),
		('Sarah', 'Brown', 'F', '89 Airport Rd, Enugu', '1992-11-03', 'Kaiser', 'sarah.b@email.com', '08122334455',
		'08099887766', 'sarahb92', 'Brown@92'),
		('James', 'Jones', 'M', '43 Unity Rd, Ibadan', '1988-07-20', 'Cigna', 'james.j@email.com', '08033344455',
		'07088997766', 'jamesj88', 'JJ88@pass'),
		('Partricia', 'Garcia', 'F', '17 Ring Rd, Benin', '1983-03-11', 'Humana', 'pat.g@gmail.com', '08156677889',
		'07033445522', 'patg83', 'Pat!1983'),
		('Michael', 'MIler', 'M', '28 Garki Rd, Abuja', '1995-12-14', 'Aetna', 'mike.m@gmail.com', '08012223344', 
		'08188990211', 'mikem95', 'M@ke2024'),
		('Linda', 'Martinez', 'F', '62 Aba Rd, PH', '1986-09-09', 'Bluecross', 'linda.m@gmail.com', '08077665544', 
		'08111223344', 'lindam86', 'Lm!1986'),
		('Robert', 'Rodriguez', 'M', '15 Okpara Ave, Enugu', '1979-01-28', 'UnitedHealth', 'rob.r@email.com', '07099887766', 
		'08033442211', 'robr79', 'Rr@1979'),
		('Jenifer', 'Willson', 'F', '72 Lekki Phase 1, Lagos', '1991-05-19', 'Kaiser', 'Jen.w@email.com', '08122334477', 
		'07055443322', 'Jenw91', 'Jen#1991'),
		('Charlse', 'Anderson', 'M', '10 Opebi Rd, Lagos', '1987-08-08', 'Humana', 'charles.a@email.com', '08012332145', 
		'08166778899', 'Charlie87', 'Ch@rl87'),
		('Elizabeth', 'Thomas', 'F', '99 College Rd, Ibadan', '1984-10-23', 'Cigna', 'liz.t@email.com', '07044556622', 
		'08077665544', 'litz84', 'Liz@1984'),
		('Daniel', 'Taylor', 'M', '19 Effurun Rd, Warri', '1993-03-30', 'Aetna', 'dan.t@email.com', '08199887755', 
		'08122334411', 'dant93', 'Dt#1993'),
		('Susan', 'Moore', 'F', '38 Allen Ave, Ikeja', '1982-07-14', 'Bluecross', 'susan.m@email.com', '08088776655', 
		'07099887744', 'susanm82', 'Sm@1982'),
		('Thomas', 'Jackson', 'M', '27 Broad St, Lagos', '1976-12-01', 'UnitedHealth', 'Tom.j@email.com', '08122334499', 
		'08044556677', 'Tomj76', 'Tj#1976'),
		('Nancy', 'Martin', 'F', '14 Choda Rd, PH', '1994-04-07', 'Kaiser', 'Nancy.m@email.com', '07033445599', 
		'08166778822', 'nancym94', 'Nm@1994'),
		('Christopher', 'Lee', 'M', '33 Nsukka Rd, Enugu', '1989-11-22', 'Humana', 'chris.l@email.com', '08077889900', 
		'08122339988', 'Chrisl89', 'Cl!1989'),
		('Karen', 'Perez', 'F', '21 Ekpoma Rd, Benin', '1977-02-18', 'Cigna', 'karen.p@gmail.com', '08111224466', 
		'07099887733', 'karenp77', 'Kp#1997'),
		('Joseph', 'White', 'M', '45 Ogbomosho Rd, Oyo', '1996-06-10', 'Aetna', 'Jeow@email.com', '07022334455', 
		'08066557788', 'joew96', 'Jw@1996'),
		('Barbara', 'Harris', 'F', '51 Ring Rd, Ibadan', '1981-09-05', 'Bluecross', 'Barbara.h@email.com', '08122334411', 
		'08144556622', 'barbh81', 'Bh!1981'),
		('Matthew', 'Clark', 'M', '20 Marina Rd, Lagos', '1990-08-16', 'UnitedHealth', 'matt.c@email.com', '07099887722', 
		'081166778833', 'mattc90', 'Mc@1990'),
		('Lisa', 'Lewis', 'M', '77 Trans Amadi, PH', '1988-01-29', 'Kaiser', 'lia.l@gmail.com', '08122334455', 
		'08099887711', 'lisal88', 'Ll#1988'),
		('Margaret', 'Hall', 'F', '66 Bida Rd, Minna', '1985-12-27', 'Cigna', 'marg.h@email.com', '08199887744', 
		'08077665599', 'margh85', 'Mh#1985'),
		('Mark', 'Allen', 'M', '36 Iwo Rd, Ibadan', '1992-10-04', 'Aetna', 'mark.a@email.com', '07088997722', 
		'08122334499', 'marka92', 'Ma@1993'),
		('Sandra', 'Young', 'F', '12 GRA, Ilorin', '1980-05-21', 'Bluecross', 'Saandra.y@email.com', '08033445577', 
		'08144556688', 'sandray80', 'Sy!1980'),
		('Steve', 'King', 'M', '40 Onitsha Rd, Awka', '1979-07-17', 'UnitedHealth', 'steve.k@email.com', '07022334499', 
		'08166778844', 'stevek79', 'Sk@1979'),
		('Donna', 'Wright', 'F', '27 Jalingo Rd, Taraba', '1991-09-09', 'Kaiser', 'Donna.w@email.com', '08099887755', 
		'08111223377', 'donnaw91', 'Dw@1991'),
		('Paul', 'Scott', 'M', '30 Lokoja Rd, Kogi', '1986-06-15', 'Humana', 'Paul.s@gmail.com', '08144556633', 
		'07066778899', 'pauls86', 'Ps!1986'),
		('Angela', 'Green', 'F', '18 Ogbete Rd, Enugu', '1993-09-01', 'Cigna', 'Angel.g@email.com', '08033442266', 
		'08122334455', 'angelag93', 'Ag@1993'),
		('Anthony', 'Walker', 'M', '11 ekiti Rd, Ado-Ekiti', '1974-03-12', 'Humana', 'Anthony.w@email.com',
		'08066778899', '07022334488', 'anthw74', 'Aw@1974') 
		
SELECT * FROM Patients

--INSERT VALUES INTO DEPARTMENT TABLE

INSERT INTO Department(Department_ID, Department_Name, Head_of_Department)
	VALUES
		('1','Cardiology','Dr. Adebayo Olatunji'),
		('2','Neurology','Dr. Grace Nwosu'),
		('3','Pediatrics','Dr. Chukwuma Okafor'),
		('4','Orthopedics','Dr. Aminat Suleiman'),
		('5','Radiology','Dr. Tunde Balogun'),
		('6','Oncology','Dr. Ifeanyi Eze'),
		('7','Gynecology','Dr. Kemi Adeyemi'),
		('8','Emergency Medicine','Dr. Musa Ibrahim'),
		('9','Dermatology','Dr. Chioma Uche'),
		('10','General Surgery','Dr. Peter Adewale');

SET IDENTITY_INSERT Department ON;
		
SELECT * FROM Department;

--INSERT VALUES INTO DOCTOR TABLE

INSERT INTO DOCTOR (Doctor_ID, First_Name, Last_Name, Specialization, Department_ID, Availability,
Phone_Number, Email)
	VALUES
			('1', 'Emeka','Okonkwo','Cardiologist','1','available','08034567891', 'emeka.okonkwo@gmail.com'),
			('2', 'Amina','Yusuf', 'Neurologist','2','busy','08023456782', 'amina.yusuf@gmail.com'),
			('3', 'Tunde','Bello', 'Pediatrician','3','on leave','08123456783', 'tunde.bello@gmail.com'),
			('4', 'Ngozi','Eze','Orthopedic Surgeon','4','available','08145678934', 'ngozi.eze@gmail.com'),
			('5', 'Ibrahim','Sule', 'Radiologist','5','busy', '07098765432', 'ibrahim.sule@gmail.com'),
			('6', 'Kemi','Adeyemi', 'Oncologist','6','available', '08099887766', 'kemi.adeyemi@gmail.com'),
			('7', 'Chinedu','Nwachukwu', 'Gynecologist','7','available', '08122334455','chinedu.nwachukwu@gmail.com'),
			('8', 'Musa','Aliyu', 'Emergency Physician','8','on leave', '08011223344', 'musa.aliyu@gmail.com'),
			('9', 'Chioma','Uche', 'Dermatologist','9','available', '08166778899', 'chioma.uche@gmail.com'),
			('10', 'Peter','Adewale', 'General Surgeon','10','busy', '07033445522', 'peter.adewale@gmail.com'),
			('11', 'Grace','Okorie', 'Cardiologist','1','available', '09011223344', 'grace.okorie@gmail.com'),
			('12', 'Bashir','Abdullahi', 'Neurologist','2','on leave', '08044332211', 'bashir.abdullahi@gmail.com'),
			('13', 'Joy','Olawale', 'Pediatrician','3','available', '08199887766', 'joy.olawale@gmail.com'),
			('14', 'Samuel','Ikechukwu', 'Orthopedic Surgeon','4','busy', '09022334455', 'samuel.ikechukwu@gmail.com'),
			('15', 'Fatima','Mohammed','Radiologist','5','available', '08111223344', 'fatima.mohammed@gmail.com'),
			('16', 'Kelvin','Okafor', 'Oncologist','6','on leave', '08066778899', 'kelvin.okafor@gmail.com'),
			('17', 'Yemi','Adekunle', 'Gynecologist','7','available', '07044556677', 'yemi.adekunle@gmail.com'),
			('18', 'Hauwa','Danladi', 'Emergency Physician','8','busy', '08155667788', 'hauwa.danladi@gmail.com'),
			('19', 'Cynthia','Obi', 'Dermatologist','9','available', '09099887766', 'cynthia.obi@gmail.com'),
			('20', 'David','Ogunleye','General Surgeon','10','available', '08033445577', 'david.ogunleye@gmail.com'),
			('21', 'Esther','Nwankwo', 'Cardiologist','1','busy', '08123455667', 'esther.nwankwo@gmail.com'),
			('22', 'Mohammed','Shehu', 'Neurologist','2','available', '09088776655', 'mohammed.shehu@gmail.com'),
			('23', 'Juliet','Edeh', 'Pediatrician','3','on leave', '08077889900', 'juliet.edeh@gmail.com'),
			('24', 'Raphael','Ajayi', 'Orthopedic Surgeon','4','available', '08166554433', 'raphael.ajayi@gmail.com'),
			('25', 'Halima','Usman', 'Radiologist','5','busy', '08033449922', 'halima.usman@gmail.com'),
			('26', 'Collins', 'Nwosu', 'Oncologist','6','available', '07099882211', 'collins.nwosu@gmail.com'),
			('27', 'Abigail','Adeola', 'Gynecologist','7','available', '08155443322', 'abigail.adeola@gmail.com'),
			('28', 'Sani','Garba', 'Emergency Physician','8','on leave', '08066778822', 'sani.garba@gmail.com'),
			('29', 'Victoria','Ogun', 'Dermatologist','9','available', '09044332211', 'victoria.ogun@gmail.com'),
			('30', 'Henry','Okoro', 'General Surgeon','10','busy', '08122334411', 'henry.okoro@gmail.com');

SELECT * FROM Doctor;

--INSERT VALUES INTO APPOINTMENT TABLE 

INSERT INTO Appointment (Patiend_ID, Doctor_ID, Appointment_Date, Feedback, Status, Date_left, Reschedule)
	VALUES
			('118', '7','2025-01-09','Doctor was very attentive','completed', '2025-01-11', NULL),
			('103','15','2025-01-14',NULL,'pending', NULL, NULL),
			('126','3','2025-01-21','Good consultation','completed', '2025-01-21', NULL),
			('111','22','2025-01-28','Appointment rescheduled','cancelled', NULL, '2025-02-07'),
			('120','10','2025-02-03','Excellent service','completed', '2025-02-04', NULL),
			('104','19','2025-02-07','Doctor listened carefully','completed', '2025-02-07', NULL),
			('128','6','2025-02-15',NULL,'pending', NULL, NULL),
			('101','28','2025-02-20','Very professional','completed', '2025-02-20', NULL),
			('117','12','2025-02-27','Doctor was kind','completed', '2025-02-28', NULL),
			('124','1','2025-03-05',NULL,'pending', NULL, NULL),
			('107','25','2025-03-11','Satisfied with care','completed', '2025-03-11', NULL),
			('113','8','2025-03-16','Doctor was rushed','completed', '2025-03-16', NULL),
			('122','14','2025-03-22','Clear communication','completed', '2025-03-22', NULL),
			('109','30','2025-03-27','Cancelled due to emergency','cancelled', NULL, '2025-04-07'),
			('100','17','2025-04-02',NULL,'pending', NULL, NULL),
			('115','4','2025-04-08','Very helpful consultation','completed', '2025-05-15', NULL),
			('121','23','2025-04-14','Doctor was patient','completed', '2025-04-14', NULL),
			('110','11','2025-04-20',NULL,'pending', NULL, NULL),
			('125','9','2025-04-25','Satisfied overall','completed', '2025-04-25', NULL),
			('119','18','2025-05-01','Doctor explained treatment clearly','completed', '2025-07-20', NULL),
			('106','29','2025-05-07','Doctor was not available','cancelled', NULL, '2025-05-07'),
			('123','2','2025-05-12','Helpful advice given','completed', '2025-05-13', NULL),
			('114','27','2025-05-19','Doctor was polite','completed', '2025-02-19', NULL),
			('102','20','2025-05-25','Consultation postponed','cancelled', NULL, '2025-06-01'),
			('129','16','2025-06-01','Very effective treatment','completed', '2025-06-03', NULL),
			('116','21','2025-06-08','Doctor did not show up','cancelled', NULL, '2025-06-08'),
			('105','26','2025-06-14','Great experience','completed', '2025-06-19', NULL),
			('127','13','2025-06-19','Doctor was supportive','completed', '2025-06-19', NULL),
			('112','5','2025-06-25',NULL,'pending', NULL, NULL),
			('108','24','2025-07-02','Helpful and professional','completed', '2025-07-02', NULL);

SELECT * FROM Appointment;

--INSERT VALUES INTO Medical_Records TABLE 

INSERT INTO Medical_Records (Patient_ID, Doctor_ID, Diagnosis, Record_Date, Medicine, Allergies)
	VALUES
			('118','12','Hypertension','2025-01-09','Amlodipine','None'),
			('103','27','Asthma','2025-01-14','Salbutamol Inhaler','Aspirin'),
			('126','5','Malaria','2025-01-21','Artemether-Lumefantrine','None'),
			('111','19','Diabetes Type 2','2025-01-28','Metformin','Sulfonylureas'),
			('120','8','Peptic Ulcer','2025-02-03','Omeprazole','NSAIDs'),
			('104','30','Pneumonia','2025-02-07','Amoxicillin','Penicillin'),
			('128','16','Breast Cancer','2025-02-15','Tamoxifen','None'),
			('101','3','Migraine','2025-02-20','Sumatriptan','Ergotamine'),
			('117','24','Sickle Cell Crisis','2025-02-27','Hydroxyurea','None'),
			('124','10','Tuberculosis','2025-03-05','Rifampicin','Isoniazid'),
			('107','2','Arthritis','2025-03-11','Ibuprofen','Aspirin'),
			('113','21','Skin Infection','2025-03-16','Clindamycin','Penicillin'),
			('122','6','HIV/AIDS','2025-03-22','Tenofovir','None'),
			('109','17','Appendicitis','2025-03-27','Post-op Antibiotics','Penicillin'),
			('100','25','Typhoid Fever','2025-04-02','Ciprofloxacin','None'),
			('115','11','Chronic Kidney Disease','2025-04-08','Furosemide','NSAIDs'),
			('121','29','Anemia (Iron Def.)','2025-04-14','Ferrous Sulfate','None'),
			('110','4','Stroke','2025-04-20','Aspirin','None'),
			('125','14','Allergic Rhinitis','2025-04-25','Loratadine','Dust Mites'),
			('119','9','COVID-19','2025-05-01','Remdesivir','None'),
			('106','18','Hypertension','2025-05-07','Lisinopril','ACE Inhibitors'),
			('123','22','Asthma','2025-05-12','Budesonide Inhaler','Aspirin'),
			('114','1','Gastritis','2025-05-19','Pantoprazole','NSAIDs'),
			('102','28','Otitis Media','2025-05-25','Azithromycin','Penicillin'),
			('129','7','Breast Cancer','2025-06-01','Letrozole','None'),
			('116','15','Malaria','2025-06-08','Artemisinin Combo','None'),
			('105','20','Diabetes Type 1','2025-06-14','Insulin','None'),
			('127','23','Peptic Ulcer','2025-06-19','Ranitidine','NSAIDs'),
			('112','13','Tuberculosis','2025-06-25','Isoniazid','Rifampicin'),
			('108','26','Pneumonia','2025-07-02','Azithromycin','Penicillin');

SELECT * FROM Medical_Records;

