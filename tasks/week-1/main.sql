import sqlite3

# Connect to database (it will create users.db if not exists)
conn = sqlite3.connect("users.db")
cursor = conn.cursor()

# 1. Create table
cursor.execute("""
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT,
    age INTEGER
)
""")

# 2. Insert records
cursor.execute("INSERT INTO users VALUES (1, 'Rahul', 'rahul@gmail.com', 20)")
cursor.execute("INSERT INTO users VALUES (2, 'Anita', 'anita@yahoo.com', 17)")
cursor.execute("INSERT INTO users VALUES (3, 'Vinayak', 'vinayak@gmail.com', 22)")

# 3. Retrieve all records
cursor.execute("SELECT * FROM users")
print("All Users:", cursor.fetchall())

# 4. Users age >= 18
cursor.execute("SELECT * FROM users WHERE age >= 18")
print("Users 18 or older:", cursor.fetchall())

# 5. Update age
cursor.execute("UPDATE users SET age = 21 WHERE id = 1")

# 6. Delete one user
cursor.execute("DELETE FROM users WHERE id = 2")

# Bonus: Sort by age
cursor.execute("SELECT * FROM users ORDER BY age ASC")
print("Sorted by age:", cursor.fetchall())

# Bonus: Gmail users
cursor.execute("SELECT * FROM users WHERE email LIKE '%@gmail.com'")
print("Gmail users:", cursor.fetchall())

# Save changes and close connection
conn.commit()
conn.close()
