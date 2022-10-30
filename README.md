# MySQL Notes......
* How does it work: Client Server Architecture
* Atler table
  * Used to add, del, modify an existing table/column
  * When added column it will be added to the end by default. To add data before or after specific position.
  *  ![image](https://user-images.githubusercontent.com/45542177/197877423-4793da83-c079-4a71-aaf2-347921344707.png)
* Constraints
  * RULES specified for data in table for accuracy and avoids violation
  * eg: not allowing a column to be null or specifing it has be unique
  * Can be done when creating table or after
  * ![image](https://user-images.githubusercontent.com/45542177/197877690-a29b2458-871a-4679-b56d-d44597ef74ee.png)
* PK & FK relationship
  * To link PK of other table as a FK in the new table
  <img width="851" alt="image" src="https://user-images.githubusercontent.com/45542177/198389659-97236c77-06ad-4a49-ac29-abe3af7673e9.png">
  
##  JOINS:  Retrive Data from more than one table
<img width="693" alt="image" src="https://user-images.githubusercontent.com/45542177/198759434-affb7ec4-7c6d-4e0d-a32e-c554178e6996.png">

ANSI Format JOIN (NEW FORMAT - used more) -> "ON" keyword
* Inner Join : Common data between two sets
 * RULES: Common Column, Same data type
SYNTAX: 
![image](https://user-images.githubusercontent.com/45542177/198758021-fa3350ef-3591-435a-b77c-1ccdad67355b.png)

SELECT *FROM STUDENT(TB1) INNER JOIN(INNER JOIN -> JOIN KEY) COURSE(TB2) ON (STUDENT.COURSEID = COURSE.COURSEID)-> JOINING CONDITION i.e. equals

* Outer Join

NON-ANSI Format JOIN (OLD FORMAT) -> "WITH" Keyword

* DUAL? 
* For each loop? Read/write to different table


