# CS50's Introduction to Databases with SQL
This is my solutions to the problem sets.
## Week 0 Querying
### - [Cyberchase](Problem_Set_0/cyberchase/)
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
