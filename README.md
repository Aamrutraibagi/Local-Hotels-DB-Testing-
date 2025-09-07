# 🏨 Local Hotels DB Testing - JDBC Project

This project demonstrates how to use **Java + JDBC** to:

- Connect to a MySQL database  
- Load database credentials from a `config.properties` file  
- Retrieve metadata (like list of tables)  
- Query and display hotel data from the `hotel_details` table  
- Insert new hotel records  
- Follow best practices in JDBC and modular design  

---

## 📁 Project Structure
```
com-crio-jdbc/
├── db_data/
│ └── hotels.sql # SQL file to create DB and table
├── src/
│ ├── main/
│ │ ├── java/
│ │ │ └── com/crio/jdbc/
│ │ │ └── App.java # Main DB logic
│ │ └── resources/
│ │ └── config.properties # DB config file
│ └── test/
│ └── java/
│ └── com/crio/jdbc/
│ └── AppTest.java # Unit test (optional)
├── build.gradle # Gradle build script
├── .gitignore
└── README.md # Project documentation
```

---

## ⚙️ Prerequisites

- ✅ Java JDK (8 or above)  
- ✅ MySQL Server (running on localhost:3306)  
- ✅ Gradle (for building/running project)  
- ✅ MySQL Workbench or CLI (optional, for DB management)  

---

## 🛠️ MySQL Setup Instructions

### Step 1: Install MySQL  
Download and install MySQL from: [https://dev.mysql.com/downloads/](https://dev.mysql.com/downloads/)  
(Remember your root password during installation)

### Step 2: Start MySQL Server  
- Default host: `localhost`  
- Default port: `3306`  

### Step 3: Create Database & Table  
Run the following SQL (also present in `db_data/hotels.sql`):  

```sql
CREATE DATABASE hotels;
USE hotels;

CREATE TABLE hotel_details (
    hotel_id INT PRIMARY KEY,
    hotel_name VARCHAR(100),
    star_rating INT,
    city VARCHAR(50)
);

```
---

📂 Config File

Path: src/main/resources/config.properties
```
db.url=jdbc:mysql://localhost:3306/hotels
db.user=root
db.password=Pappa@143
```
⚠️ Update the username/password as per your local MySQL setup.

---
🚀 Running the Project
🔧 Build the project with Gradle:
```
./gradlew build
```
▶️ Run the app:
```
./gradlew run
```

✅ What the App Does

The App.java performs the following actions:

Connects to the MySQL database using properties from config.properties

Prints all table names from the hotels database

Reads and displays hotel names along with their star ratings

Inserts a new hotel into hotel_details table
```
Total number of Tables: 1
hotel_details

Hotel_Name | Star_Ratings
--------------------------
Taj Hotel | 5
Oberoi Palace | 4

A new hotel was inserted successfully!
```
---
## 🧪 Future Enhancements

Add unit tests in AppTest.java

Support updating and deleting hotel records

Add logging

Use DAO pattern for clean separation

🛡️ Best Practices Followed

🔐 Externalized credentials using config.properties

🧹 Proper JDBC resource management (try-with-resources)

💥 Clean error handling

📦 Modular structure using Gradle

🤝 Contributing
---
Feel free to fork this repo, improve it, and submit a pull request. Contributions are welcome!
