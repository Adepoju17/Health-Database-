# Health Database Project using SQL

## Table of Contents
1. Description
2. Objective
3. Task Details and Instructions
4. Requirements
5. Task Details
6. Database Design and Normalization

---
### Description
This is a database about a system built for a hospital management. It helps the management to store information on their patients, doctors, medical records (past appointments, diagnoses, medicines, medicine prescribed date, allergies), appointments, and departments.  

---
### Objective
Design a modern day Database system for a Hospital using SQL to help the Hospital effectively manage their recods, transform scattered, often manual, records into a centralized, effecient, secure, and reliable source of truth that imporve patient care and operational performances. 

---
### Task Details and Instructions
Imagine you are employed as a database developer consultant for a hospital. They are currently in the process of developing a new database system which they require for storing information on their patients, doctors, medical records (past appointments, diagnoses, medicines, medicine prescribed date, allergies), appointments, and departments.
In your initial consultation with the hospital, you have gathered the information below. Please read the below carefully and continue to the task description.

---
### Requirements
When a patient wants to register to the GP in the hospital, they need to provide their full name, address, date of birth, and insurance. Also, they must create the username and password to allow them to sign into the patient portal. 
The system will store the patient’s data. Optionally, they can also provide an email address and telephone number. The patients will then book an appointment through the patient’s portal.
The system checks the doctor’s availability. Appointment details are stored, including date, time, department, status (pending, cancelled, or completed), and doctor.
When the patient arrives for the appointment, the doctors should check and review the patient's medical record including past appointments, diagnoses, medicines, and allergies. Doctors update the medical record with new diagnoses and medicines. When a patient finishes their appointment and has seen the doctor, their status must be changed to completed, and they can write review/feedback for the doctor.
If the patient has cancelled the appointment, they must rebook the appointment. If the patient leaves the hospital system, the hospital wants to retain their information on the system, but they should keep a record of the date the patient left.

---
### Task Details
As the database consultant, you are required to design the database system based on the information provided above, along with a report explaining and justifying your design decisions and the process you followed to complete the tasks. 

---
### Database Design and Normalization
- Design and normalize your proposed database into 3NF (Third Normal Form), fully explaining and justifying your database design decisions and documenting the process you have gone through to implement this design using T-SQL statements in Microsoft SQL Server Management Studio (SSMS), using screenshots to support your explanation.
- Create tables according to the scenario explained above, which should include details on patients, doctors, medical records, appointments, and departments.
- All tables and views must be created using T-SQL statements, which should be included in your report. Clearly highlight which column(s) are primary keys or foreign keys. You should also explain the data type used for each column and justify the reason for choosing this.
- You should also consider using constraints when creating your database to help ensure data integrity.
- Populate (Insert) the tables with the appropriate number of records (at least 20). You should also ensure the data you input allows you to adequately test the following queries.
## 🔐 Security and Privacy
All data in this project is synthetic and does not contain any real Protected Health Information (PHI)
## 🛡️ License 
This Project is licensed under the [MIT_License](LICENSE). You are free to use, modify, and share this project with proper attribution.
## 🧑‍💻 About me
Hi there! I'm **Adepoju Oluwadunsin Gbenga**. I'm a professional data analyst, well skilled in SQL, Microsoft Excel, Power BI, and Python. I'm passionate about my job and always readt to deliver the best.
