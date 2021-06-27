import mysql

from api_config import config
import mysql.connector

"""SELECT * FROM table_name;"""


def select_all_columns_from_table(table):
    return f"SELECT * FROM {table};"


""" 
https://www.w3schools.com/sql
"""


def select_all_columns_from_table_with_conditions(table, conditions):
    return f"SELECT * FROM {table} WHERE {conditions};"


"""
SELECT column1, column2, ...
FROM table_name;
"""


def select_some_columns_from_table(table, columns):
    return f"SELECT {columns} FROM {table};"


"""
SELECT DISTINCT column1, column2, ...
FROM table_name;
"""

"""
SELECT COUNT(DISTINCT column_name) FROM table_name;
"""


def select_some_columns_from_table_with_conditions(table, columns, conditions):
    return f"SELECT {columns} FROM {table} WHERE {conditions};"


"""
SELECT column1, column2, ...
FROM table_name
WHERE condition;
"""

"""
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;
"""

"""
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND (condition2 OR condition3) ...;
"""

"""
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;
"""

"""
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition1 AND NOT condition2 AND NOT condition3 ...;
"""

"""
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;
"""

"""
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
"""

"""
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
"""

"""
SELECT column_names
FROM table_name
WHERE column_name IS NULL;
"""

"""
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;
"""

"""
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
"""

"""
DELETE FROM table_name WHERE condition;
"""

"""
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;
"""

"""
SELECT MIN(column_name)
FROM table_name
WHERE condition;
"""

"""
SELECT MAX(column_name)
FROM table_name
WHERE condition;
"""

"""
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
"""

"""
SELECT AVG(column_name)
FROM table_name
WHERE condition;
"""

"""
SELECT SUM(column_name)
FROM table_name
WHERE condition;
"""

"""
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
"""

"""
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;
"""

"""
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;
"""

"""
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;
"""

"""
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;
"""

"""
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;
"""

"""
SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;
"""

"""
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);
"""


class MySQLConnector:

    def __init__(self):
        self.host = config.HOST,
        self.user = config.USER,
        self.password = config.PASSWORD,
        self.port = config.PORT,
        self.database = config.DATABASE

    def connect_to_database(self):
        return mysql.connector.connect(
            host=self.host,
            user=self.user,
            password=self.password,
            port=self.port,
            database=self.database
        )

    def show_all_database(self):
        cursor = self.connect_to_database().cursor()
        cursor.execute("SHOW TABLES")
        for x in cursor:
            print(x)

    def query_fetch_all(self, query):
        cursor = self.connect_to_database()
        cursor.execute(query)
        return cursor.fetchall()

    def query_fetch_first_line(self, query):
        cursor = self.connect_to_database()
        cursor.execute(query)
        return cursor.fetchone()

    def query_fetch_more_line(self, query, size):
        cursor = self.connect_to_database()
        cursor.execute(query)
        return cursor.fetchmany(size)


if __name__ == '__main__':
    mysql_conn = MySQLConnector()
    mysql_conn.show_all_database()
    query = "SELECT * FROM jobhop_production.cv"
    mysql_conn.query_fetch_first_line(query)