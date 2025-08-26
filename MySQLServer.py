#!/bin/bash/python3

import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        #Connect to MySQL Server
        connection = mysql.connector.connect(
                host='localhost',
                user='root',
                password='localhost1'
                )
        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execue("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' create successfully!")
     except Error as err:
         print(f"Error: {err}")

    finally:
        #Close cursor and connection if they were opened
        if 'cursor' in locals():
            cursor.close()
        if 'connection' in locals() and connection.is_connected():
            connection.close()

if __name__ == ""__main__":
    create_database()


