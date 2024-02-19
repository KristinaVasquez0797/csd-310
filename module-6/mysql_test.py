#User: Kristina Vasquez
#Description: This is the same code that the professor used in module 6. This is not my original code, I am just using it for testing purposes. 
#This is owned by Bellevue univeristy not me.
#Citations: https://cyberactive.bellevue.edu/ultra/courses/_524041_1/cl/outline

import mysql.connector
from mysql.connector import errorcode

config = {
    "user": "movies_user",
    "password": "popcorn",
    "host": "127.0.0.1",
    "database": "movies",
    "raise_on_warnings": True
}

try:
    db = mysql.connector.connect(**config)
    print("\n Database user {} connected to MySQL on host {} with database{}".format(config["user"], config["host"], config["database"]))
    
    input("\n\n Press any key to continue . . .")

except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print(" The supplied username or password does not exist")
        
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print(" The specified database does not exist")
        
    else:
        print(err)
        
finally:
    db.close