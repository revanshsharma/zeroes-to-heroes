SQL is a language used to store, manage, and retrieve data from a database. A database can be imagined as a digital table, similar to an Excel sheet, where information is stored in rows and columns. In this program, SQL is used inside Python to work with a database.

Python does not directly understand SQL commands, so we use a built-in Python library called sqlite3. This library allows Python to connect to an SQLite database and send SQL queries to it.

First, a connection to the database is created using sqlite3.connect(). If the database file does not already exist, Python automatically creates it. After that, a cursor is created. The cursor works like a messenger—it sends SQL commands from Python to the database and brings back the results.

Next, a table named users is created using the CREATE TABLE command. This table contains four columns: id, name, email, and age. The id column is set as the primary key, which means each user will have a unique identification number.

After creating the table, records are inserted into it using the INSERT INTO command. This step adds user information such as name, email, and age into the database.

The SELECT command is then used to retrieve data from the table. First, all records are displayed. After that, another SELECT query is used with a condition to show only users who are 18 years old or above.

The program then updates the age of one user using the UPDATE command. This shows how existing data in the database can be modified. After updating, one user record is removed from the table using the DELETE command.

Finally, the bonus operations are performed. The users are sorted by age using the ORDER BY command, and users with a Gmail email address are found using the LIKE keyword. These operations help in organizing and filtering data.

At the end of the program, all changes are saved using commit(), and the database connection is closed. This completes the basic SQL operations using Python.
