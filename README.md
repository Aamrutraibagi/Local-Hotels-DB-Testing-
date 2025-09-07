# Local-Hotels-DB-Testing-
🏨 Hotel Database JDBC Project

This project demonstrates how to use Java + JDBC to:

Connect to a MySQL database

Read from a properties file for DB credentials

Retrieve metadata (table list)

Read hotel data from the hotel_details table

Insert new hotel data

Maintain clean database interaction using JDBC best practices

📁 Project Structure

com-crio-jdbc/
├── db_data/
│   └── hotels.sql               # SQL file to set up the database and tables
├── src/
│   ├── main/
│   │   ├── java/com/crio/jdbc/
│   │   │   └── App.java         # Main logic for DB testing
│   │   └── resources/
│   │       └── config.properties # DB configuration file
│   └── test/
│       └── java/com/crio/jdbc/
│           └── AppTest.java     # (Optional) Unit tests


⚙️ Prerequisites

✅ Java (JDK 8 or above)

✅ MySQL
 installed and running

✅ Gradle (used to build/run this project)

✅ MySQL Workbench or CLI (optional but recommended)


🛠️ MySQL Installation & Setup
📌 Step 1: Install MySQL

Download and install from MySQL Downloads

During setup, remember your root password

📌 Step 2: Start MySQL Server

Ensure MySQL service is running on:

Host:     localhost  
Port:     3306  


📌 Step 3: Create Database & Table

Open MySQL CLI or Workbench

Run the SQL commands in db_data/hotels.sql to create the schema and table:

CREATE DATABASE hotels;

USE hotels;

CREATE TABLE hotel_details (
    hotel_id INT PRIMARY KEY,
    hotel_name VARCHAR(100),
    star_rating INT,
    city VARCHAR(50)
);


📁 config.properties

Located at: src/main/resources/config.properties

db.url=jdbc:mysql://localhost:3306/hotels
db.user=root
db.password=Pappa@143

💡 Update db.user and db.password as per your MySQL setup.

🚀 Running the Project
🔧 Build the project with Gradle:
./gradlew build

▶️ Run the app:
./gradlew run


✅ What the App Does

The App.java performs the following actions:

Connects to the MySQL database using properties from config.properties

Prints all table names from the hotels database

Reads and displays hotel names along with their star ratings

Inserts a new hotel into hotel_details table

Total number of Tables: 1
hotel_details

Hotel_Name | Star_Ratings
--------------------------
Taj Hotel | 5
Oberoi Palace | 4

A new hotel was inserted successfully!

🧪 Future Enhancements

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

Feel free to fork this repo, improve it, and submit a pull request. Contributions are welcome!
