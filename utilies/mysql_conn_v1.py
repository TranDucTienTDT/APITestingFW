from mysql.connector import connect, Error


def create_connection():
    try:
        with connect(
                host="127.0.0.1",
                user="backend",
                password="f6qsmx9ijez9xxb9",
                port="3366",
                database="jobhop_staging"
        ) as connection:
            print(connection)
    except Error as e:
        print(f"The error is occurred. It is {e}")

    cur = connection.cursor()
    cur.execute("SELECT * FROM job")
    myresult = cur.fetchall()
    for x in myresult:
        print(x)

    return connection


if __name__ == '__main__':
    create_connection()


