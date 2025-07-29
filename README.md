# CS50's Introduction to Databases with SQL
This is my solutions to the problem sets.  
.db files are not included.  
For some psets in files "*_output.txt" are outputs to the queries.

### Usage
To test the queries in SQLite3, use the following comamnd:  
`.read FILENAME.sql`

## Week 0 Querying

### [Cyberchase](Problem_Set_0/cyberchase/)
Welcome to Cyberspace! Cyberchase is an animated, educational kid’s television series, aired by the United States’ Public Broadcasting Service (PBS) since 2002. Originally designed to “show kids that math is everywhere and everyone can be good at it,” the world of Cyberchase centers on Jackie, Matt, and Inez as they team up with Digit—a “cybird”—to stop Hacker from taking over Cyberspace and infecting Motherboard. Along the way, the quartet learn math, science, and problem-solving skills to thwart Hacker in his attempts.

In a database called `cyberchase.db`, using a table called `episodes`, chase answers to PBS’s questions about Cyberchase’s episodes thus far.

### [36 views](Problem_Set_0/views/)
From 1830 to 1832, the Japanese artist Katsushika Hokusai created 36 woodblock prints depicting 36 different views of Mount Fuji, a volcano on the Honshū island of Japan. Among the series’ most famous works are Fine Wind, Clear Morning and The Great Wave off Kanagawa. The prints became so influential that another Japanese artist of the time period—Utagawa Hiroshige—created his own series of 36 prints, each depicting a new view of Fuji.

In `views.db`, you’ll find details on the 36 prints created, respectively, by Hokusai and Hiroshige. In total, you’ll have data on 72 prints. Prints like these tend to be appreciated for their aesthetics, not their statistics, but computer science now helps create additional numeric insights about artwork. In addition to each print’s title and author, you’ll find some statistics commonly used in computational image analysis: the print’s average color, its brightness, its contrast, and its entropy. In the accompanying `.sql` files, write SQL queries to answer questions about this database of 72 prints and the statistics about their composition.

### [Normals](Problem_Set_0/normals/)
How do we know whether ocean temperatures are lower or higher than “normal”? What’s a “normal” temperature? Turns out that scientists have developed a metric called a “Climate Normal.” A Climate Normal characterizes aspects of earth’s climate—its long-term weather—over a span of 30 years. One important metric is ocean temperature.

In a database called `normals.db`, using a table called `normals`, explore some of the most recent Climate Normal data to understand what makes a normal ocean temperature around the world.

### [Players](Problem_Set_0/players/)
If you’re not familiar, baseball is a popular sport in which two teams of 9 players take turns batting (hitting a ball) and fielding (catching and throwing hit balls). Points (“runs”) are scored when a hitting team’s player hits a ball and eventually touches all bases before the fielding team’s players have the chance to get them “out.” Baseball is arguably most popular in the United States and Canada, where the MLB (Major League Baseball) has served as the professional association for players since 1876.

In a database called `players.db`, using a table called `players`, answer questions about MLB players who’ve played from 1871 to 2023.

## Week 1 Relating

### [Packages, Please](Problem_Set_1/packages/)
You are a mail clerk for the city of Boston and, as such, you oversee the delivery of mail across the city. For the most part, all packages sent are eventually delivered. Except, every once in while, a mystery falls into your lap: a missing package! For each customer that comes to you with a report of a missing package, your job is to determine:

- The current address (or location!) of their missing package
- The type of address or location (e.g. residential, business, etc.)
- The contents of the package
All you know is what the customers themselves will tell you. To solve each mystery, you’ll need to use the mail delivery service’s database, `packages.db`, which contains data on the transit of packages around the city. Using just the information in the database, your task is to help each customer find their missing package.

### [DESE](Problem_Set_1/dese/)
You just landed a new job as a data analyst for the State of Massachusetts, working within the Department of Elementary and Secondary Education (or DESE, for short!). DESE oversees the state’s public education system. One responsibility of DESE is to ensure every child has a quality education—one in which they encounter experienced teachers, have access to an abundance of resources, and ultimately graduate having met all requirements of the state. Your SQL skills have a part to play in these lofty goals!

In a database called `dese.db`, answer questions about the state of education in Massachusetts.  

### [Moneyball](Problem_Set_1/moneyball/)
The year is 2001. You’ve been hired to help make the most of the Oakland Athletics baseball team’s dwindling player budget. Each year, teams like the “A’s” hire new baseball players. Unfortunately, you’re low on star players—and on funds. Though, with a bit of SQL and some luck, who says you can’t still create a team that defies expectations?

Given a database called `moneyball.db`—one that contains information on players, their performances, and their salaries—help the Oakland Athletics find the value in players others might miss.  

## Week 2 Designing

### [ATL](Problem_Set_2/atl/)
Hartsfield-Jackson International Airport, perhaps better known as “ATL” for its IATA airport code, has been the busiest airport in the world since 1998. Located in Atlanta, Georgia in the United States, ATL served 93.7 million passengers in 2022. Maybe you were one of them!

Suppose you’ve just been hired to help ATL re-design their database system. In a file called `schema.sql` in a folder called `atl`, write a set of SQL statements to design a database with which Hartsfield-Jackson could keep track of its passengers and their flights.

### [Happy to Connect](Problem_Set_2/connect/)
LinkedIn is “the world’s largest professional network” with a mission to “connect the world’s professionals to make them more productive and successful.” Perhaps you have an account? On the platform, users can post their professional experience (i.e., past jobs, education, etc.) and make connections with other people they’ve met, in-person or online.

In a file called `schema.sql` in a folder called `connect`, write a set of SQL statements to design a database LinkedIn could use.

### [Union Square Donuts](Problem_Set_2/donuts/)
Around Boston, Brookline, and Somerville, you might catch sight of Union Square Donuts, a shop famous in the area for its delicious confections. Suppose that Union Square Donuts has been around for a while and, while their paper receipts have worked well so far, they’re hoping for a system to help them handle more customers. In fact, they’ve just hired you to design a database fitting for their shop. In exchange, free donuts? 🍩

In a file called `schema.sql` in a folder called `donuts`, write a set of SQL statements to create a database that Union Square Donuts could use to manage their day-to-day operations.

## Week 3 Writing

### [Don't Panic!](Problem_Ser_3/dont-panic)
You’re a trained “pentester.” Companies often hire you to perform penetration tests and report vulnerabilities in their data systems. Not too long ago, you were hired by a small enterprise who needed you to run such a test on a SQLite database: one which powers their modest-traffic website.

To succeed in this covert operation, you’ll need to…

- Alter the password of the website’s administrative account.
- Erase any logs of the above password change recorded by the database.
- Add false data to throw the company off of your trail.

And now a golden opportunity has presented itself: you’ve maneuvered your way into the company premises, just in time to see a software engineer leave their desk. The engineer’s connection to the database is still open. You estimate you have 5 minutes before they come back. Ready?

### [Meteorite Cleaning](Problem_Ser_3/meteorites)
As a data engineer at NASA, you often spend your time cleaning meteorites—or at least the data they create.

You’ve been given a CSV file of historical meteorite landings here on Earth, of which there are quite a few! Your job is to import the data into a SQLite database, cleaning it up along the way. After you’re done, the database will be used in analyses by some of your fellow engineers.

## Week 4 Viewing

### [Census Taker](Problem_Set_4/census/)
You are a census taker working for the Nepali government. As you crest one final hill, your breath catches at the sight of a Himalayan sunrise, casting a glow on the village you’ve journeyed so far to reach. Your guide, a local, halts abruptly. Underneath the steady rustle of your census papers, you feel an itch of curiosity. After all, it’s not every day your job takes you to a village like this one.

In `census.db`, process your data into views the Nepali government can use for record-keeping.

### [The Private Eye](Problem_Set_4/private/)
CS50’s duck debugger has disappeared once more and you desperately need a detective. You’ve heard stories of one who lives uptown, always secretive in their work, never seen but when they want to be. Unsurprisingly, they’ve proven to be quite elusive to you. But here you are, in their study, after picking up their address from a certain mail clerk.

On their mahogany desk, fresh white paper glints. Inscribed is the following table:

||||
|-|-|-|
|14|98|4|
|114|3|5|
|618|72|9|
|630|7|3|
|932|12|5|
|2230|50|7|
|2346|44|10|
|3041|14|5|

And tucked underneath, a worn book, <u>The Adventures of Sherlock Holmes</u>.

### [Bed and Breakfast](Problem_Set_4/bnb/)
A Bed and Breakfast (“BnB” for short!) is a short-term place one might stay and pay the owner for the service, similar to a hotel. Over the past few years, AirBnB has allowed most anyone to rent out their place, whether it’s a home, a cute cottage, or even a treehouse.

You’re a data analyst for the City of Boston and you’re interested in discovering how the rise of AirBnB has changed the local tourist scene. You’ve even compiled a database, `bnb.db`, filled with data directly from AirBnB. In `bnb.db`, whip up a few views that will paint a clearer picture of AirBnB’s influence on the city of Boston.

## Week 5 Optimizing

### [In a Snap](Problem_Set_5/snap/)
After the printing press, the postal service, and the telegram came the messaging apps. Chances are you’ve used a messaging app today—whether Facebook Messenger, iMessage, Instagram, Signal or Snapchat, among many others. Whereas their early counterparts measured speed of communication in terms of weeks, days, or hours, messaging apps depend on a kind of speed that’s on the order of milliseconds: a message delayed is now a connection missed.

In this problem, you’ll write SQL queries for a fictional app that allows users to send pictures which expire 30 seconds after the recipient views them (an idea popularized by Snapchat!). The queries you’ll write will ultimately enable the app to implement its core features. Yet, given the app has several thousand users depending on instant communication, it’s especially important to write queries that are fast, not only correct. You’ll practice writing queries that take advantage of indexes, all in the service of letting users stay in touch in a snap.

### [your.harvard](Problem_Set_5/harvard/)
If you’re not already familiar, Harvard has a course shopping tool called my.harvard, with which students explore (and ultimately register for!) classes. To keep track of courses, students, and their registrations, my.harvard presumably uses some kind of underlying database. And yet, if you’ve ever used it, you’ll know that my.harvard isn’t especially… quick.

Here’s your chance to make my.harvard just a little bit faster! In this problem, take some Harvard course data and create indexes to speed up typical queries on the database. Keep in mind that indexing every column isn’t always the best solution: you’ll need to consider trade-offs in terms of space and time, ultimately representing Harvard’s courses and students in the most efficient way possible.

## Week 6 Scaling

### [Happy to Connect (Sentimental)](Problem_Set_6/sentimental-connect/)
You might recall from an earlier problem that LinkedIn is “the world’s largest professional network” with a mission to “connect the world’s professionals to make them more productive and successful.” Odds are, then, they use full-fledged database servers to ensure their platform is highly available around the world.

In a file called `schema.sql` in a folder called `sentimental-connect`, write a set of SQL statements to design a MySQL database schema that LinkedIn could use.

### [From the Deep](Problem_Set_6/deep/)
You are a researcher operating a remote submarine, the AquaByte Explorer, which continuously collects observations from the ocean floor. (AquaByte, though fictional, is a bit like the real SuBastion!). AquaByte sends data up from the deep, storing it in a database located across several boats on the surface of the ocean.

In a file called `answers.md`, your task is to analyze the trade-offs in a few potential designs for AquaByte’s distributed database system!

### [Don't Panic! (Sentimental) with Python](Problem_Set_6/dont-panic-python/)
You’re a trained “pentester.” After your success in an earlier operation, a new company has hired you to perform a penetration test and report the vulnerabilities in their data system. This time, you suspect you can do better by writing a program in Python that automates your hack.

To succeed in this covert operation, you’ll need to…

- Connect, via Python, to a SQLite database.
- Alter, within your Python program, the administrator’s password.

If you don’t have experience with Python, not to worry! This problem will walk you through each step along the way.

### [Don't Panic! (Sentimental) with Java](Problem_Set_6/dont-panic-java/)
You’re a trained “pentester.” After your success in an earlier operation, a new company has hired you to perform a penetration test and report the vulnerabilities in their data system. This time, you suspect you can do better by writing a program in Java that automates your hack.

To succeed in this covert operation, you’ll need to…

- Connect, via Java, to a SQLite database.
- Alter, within your Java program, the administrator’s password.

If you don’t have experience with Java, not to worry! This problem will walk you through each step along the way.

## [Final Project](Final_Project/)
The climax of this course is its final project. The final project is your opportunity to take your newfound savvy with SQL for a spin and develop your very own database. We ask that you build something of interest to you, that you solve a substantive problem, that you positively impact others, or that you change the world. Strive to create something you’re proud of.

Since software development is rarely a one-person effort, you are allowed an opportunity to collaborate with one or two classmates for this final project. Needless to say, it is expected that every student in any such group contribute equally to the design and implementation of the project. Moreover, it is expected that the scope of a two- or three-person group’s project be, respectively, twice or thrice that of a typical one-person project. Although no more than three students may design and implement a given project, you are welcome to solicit advice from others, so long as you respect the course’s policy on academic honesty.
