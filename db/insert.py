from faker import Faker
import sqlite3

from db.config import LOCAL_DB_PATH


def insert_values():
    fake = Faker()
    
    try:
        conn = sqlite3.connect(LOCAL_DB_PATH)
        cursor = conn.cursor()

        # Insert fake data into the tables
        for _ in range(50):
            cursor.execute("INSERT INTO students (name, group_id) VALUES (?, ?)",
                           (fake.name(), fake.random_int(min=1, max=3)))
        for _ in range(3):
            cursor.execute(
                "INSERT INTO groups (name) VALUES (?)", (fake.word(),))
        for _ in range(5):
            cursor.execute(
                "INSERT INTO teachers (name) VALUES (?)", (fake.name(),))
        for _ in range(8):
            cursor.execute("INSERT INTO subjects (name, teacher_id) VALUES (?, ?)",
                           (fake.word(), fake.random_int(min=1, max=5)))
        for _ in range(1000):  # Assuming each of the 50 students has up to 20 grades
            cursor.execute("INSERT INTO grades (student_id, subject_id, grade, date) VALUES (?, ?, ?, ?)", (fake.random_int(
                min=1, max=50), fake.random_int(min=1, max=8), fake.random_int(min=1, max=10), fake.date()))

        conn.commit()
        print('values inserted successfully')
    except sqlite3.Error as e:
        print(f"An error occurred: {e}")
    finally:
        if conn:
            conn.close()
