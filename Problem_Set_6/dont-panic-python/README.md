# Don’t Panic!
## Problem to Solve
You’re a trained “pentester.” After your success in an earlier operation, a new company has hired you to perform a penetration test and report the vulnerabilities in their data system. This time, you suspect you can do better by writing a program in Python that automates your hack.

To succeed in this covert operation, you’ll need to…

- Connect, via Python, to a SQLite database.
- Alter, within your Python program, the administrator’s password.

If you don’t have experience with Python, not to worry! This problem will walk you through each step along the way.

## Specification
In `hack.py`, write a Python program to achieve the following:

- Connect, via Python, to a SQLite database.
- Alter, within your Python program, the administrator’s password.

When your program in `hack.py` is run on a new instance of the database, it should produce the above results.

Clock’s ticking!

## Walkthrough
> If you’re new to Python (or to connecting Python with SQL!) this walkthrough will guide you through each of this problem’s steps.

### Python
When you download the distribution code for this problem, you should notice a file named `hack.py`. You can tell this program is a Python program because it ends with `.py`. The `.py` extension identifies files as Python files much like how the `.sql` extension identifies files as a set of SQL statements.

At first, `hack.py` should only include a single line of Python code:
```
print("Hacked!")
```

To run this Python program, ensure that—when you type `ls`—you see `hack.py` among the files in your current directory. Then, execute the below in your terminal:

```
python hack.py
```

You should see “Hacked!” in your terminal window. Not quite a hack, but you’re on your way!

### Connecting to a Database
Now that you’re able to run your Python program, the next step is to connect your program to dont-panic.db. To do so, you’ll need to make use of CS50’s library for Python. A library is a collection of code that someone else has written to solve a problem (and, importantly, which you can use in your own program!). In this case, one of the problems the CS50 library for Python helps you solve is the process of connecting to a SQLite database.

To use the CS50 library’s SQL functionality in your own program, replace `print("Hacked!")` with the below:

```
from cs50 import SQL
```

This line of Python code says that your program should grab (“import”) tools related to SQL from the CS50 library, called `cs50`.

With this library now included in your program, establishing a connection to `dont-panic.db` is as simple as one line of Python code:

```
from cs50 import SQL


db = SQL("sqlite:///dont-panic.db")
```

You can break this line of code into the following pieces:

- `db = SQL(...)`, which establishes a connection to the database given as an input, within the parentheses. This line of code also ensures you can refer to your database connection as db henceforth in your program.
- `sqlite:///dont-panic.db` is a URL (similar to a website URL!) that identifies the database to which to connect (dont-panic.db) and which SQL dialect to use (sqlite, in this case, as opposed to mysql or postgres).

If you’re feeling more comfortable, you can learn more about this line of code in the documentation for CS50’s library for Python.

Try running your program now. You might not see anything happen and, if so, that’s a good sign!

### Executing SQL Statements with Python
The CS50 library for Python’s SQL functionality comes with a method called `execute`. A method receives an input and produces an output. For instance, a method might take a SQL statement as input, execute that SQL statement on a database, and return to you the results of the SQL statement. In fact, that’s exactly what the `execute` method does!

```
from cs50 import SQL


db = SQL("sqlite:///dont-panic.db")
db.execute(
    """
    UPDATE "users"
    SET "password" = 'hacked!'
    WHERE "username" = 'admin';       
    """
)
```

Notice that, inside the parentheses associated with the `execute` method, you’ve now written a fully-formed SQL query. When you run your Python program, the SQL query will be executed on the database.

After you run your program, try opening `dont-panic.db` with `sqlite3`. When you view the administrator’s password, you should find it is now “hacked!”

If at any point you’d like to reset `dont-panic.db` to its original state, recall that you can use `reset.sql`.

### Prepared Statements
Imagine you wanted a user to determine the new administrative password as your Python program runs.

Recall from lecture that a prepared statement is a SQL query with placeholders for values that are inserted (“interpolated”) later. Since you don’t know what password your program’s user will choose, the best you can do is set a placeholder for the password and allow your program to interpolate the user-chosen password later. Using a prepared statement, then, can help!

The CS50 library for Python supports using prepared statements. First, modify your program to take input from the user:

```
from cs50 import SQL


db = SQL("sqlite:///dont-panic.db")
password = input("Enter a password: ")
db.execute(
    """
    UPDATE "users"
    SET "password" = 'oops!'
    WHERE "username" = 'admin';       
    """
)
```

Notice that if you now run your program, you’re prompted for a password. Whatever you enter is stored in the variable named `password`. A variable is a name for a value that can change.

Now, modify your SQL query to be a prepared statement. In CS50’s library, you can use a ? to represent a placeholder for a value you’ll supply later.

```
from cs50 import SQL


db = SQL("sqlite:///dont-panic.db")
password = input("Enter a password: ")
db.execute(
    """
    UPDATE "users"
    SET "password" = ?
    WHERE "username" = 'admin';       
    """
)
```

The last step, of course, is to tell the `execute` method which value it should substitute for the placeholder. To do that, you can add the value to substitute after the SQL query, separated by a comma:

```
from cs50 import SQL


db = SQL("sqlite:///dont-panic.db")
password = input("Enter a password: ")
db.execute(
    """
    UPDATE "users"
    SET "password" = ?
    WHERE "username" = 'admin';       
    """,
    password
)
```
Now, try running your program and viewing the changes in `dont-panic.db`!