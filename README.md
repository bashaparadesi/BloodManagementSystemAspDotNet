# Blood Management System

A .NET Web Forms application to manage blood donor records.

## 🛠️ Tech Stack
- ASP.NET Web Forms
- C#
- SQL Server
- ADO.NET
- HTML, CSS, Bootstrap

## ✨ Features
- Add new donor details
- View donor list with search
- Search donors by blood group
- Responsive UI with Bootstrap
- Insert, Fetch, Display data using ADO.NET

## 📂 Pages
- `AddDonor.aspx` - Add donor form
- `DonorList.aspx` - List all donors
- `SearchDonor.aspx` - Search donors by blood group

## 🧰 Database (SQL Server)
Table: `Donor`

| Column        | Type          |
|---------------|---------------|
| DonorId       | int (PK)      |
| Name          | varchar(100)  |
| BloodGroup    | varchar(10)   |
| Phone         | varchar(20)   |
| City          | varchar(50)   |

## 🚀 How to Run
1. Open the `.sln` file in Visual Studio
2. Configure connection string in `Web.config`
3. Run database script
4. Press **F5** to run

## 👨‍💻 Author
Developed by **Basha**
