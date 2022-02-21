Pewlett_Hackard-Analysis

# Overview of the analysis
The purpose of the Pewlett Hackard Analysis is to prepare Pewlett Hackard for the upcoming "silver tsunami." The "silver tsunami refers to the large number of employees who are or or near retirement age and will begin retiring in the next few years. Pewlett Hackard must be ready to provide retirement packages to retirees by determine the number of retiring employees per title, and allow time for those retiring to mentor new generation by identify employees who are eligible to participate in a mentorship program. This would ensure that Pewlett Hackard moves through the "silver tsunami" smoothly without hindering its economic value. 

# Resources
* QuickDBD
* pgAdmin 4
* VSCode
* CSV files

# Results:
1. Number of retiring employees
* After creating the Retirement Titles table using the following code: 

![Screen Shot 2022-02-21 at 1 08 25 AM](https://user-images.githubusercontent.com/96089187/154923234-dbe5ddf1-81d1-45aa-8fe9-69a7b5e96729.png)

We found duplicate rows of employees who have changed titles throughout the year. In order to address the duplicatons,  the function "SELECT DISTINCT ON" was used to obtain unique rows, in addition to filtering employees who have already left the company. The following  following code was utilized: 

![Screen Shot 2022-02-21 at 1 10 33 AM](https://user-images.githubusercontent.com/96089187/154923596-9c346f05-8df4-4d64-a89c-31ad33294648.png)

This code eliminated the duplicates and produced the following table with the top 14 rows: 

![Screen Shot 2022-02-21 at 1 12 29 AM](https://user-images.githubusercontent.com/96089187/154923927-75fea5a0-4e90-4a73-8a40-7bbc2e56c1f7.png)
* By using the code SELECT COUNT(emp_no) From unique_titles we are able to see that 72,458 positions will need to be filled. ![Screen Shot 2022-02-21 at 1 14 47 AM](https://user-images.githubusercontent.com/96089187/154924405-2c5d3794-74b4-4cd6-8be7-79c1902806d3.png)

2. Number of retiring employees by their most recent job titles
* While there are 72,458 employees who will be getting ready to retire. The following code was utilized to further get a breakdown of their titles: ![Screen Shot 2022-02-21 at 1 18 39 AM](https://user-images.githubusercontent.com/96089187/154925079-46617617-94d1-41bd-b50f-aef19f43d258.png)
* There are 25,916 Senior Engineers and 24,926 Senior Staff who will be retiring. These two titles have the highest amount of employees who will be retiring, which indicates opportunities for mentorship as they hold senior positions. 
![Screen Shot 2022-02-21 at 1 26 59 AM](https://user-images.githubusercontent.com/96089187/154926451-0912db41-6aa7-4d12-88c2-d3752030a13c.png)

3. Mentorship Program
* The following code was used to create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965:
![Screen Shot 2022-02-21 at 1 56 41 AM](https://user-images.githubusercontent.com/96089187/154931615-47209470-ad51-4905-a35d-0a3d6030f667.png)
Please see the following Mentorship Eligibility table (see top 14 rows):
![Screen Shot 2022-02-21 at 2 00 36 AM](https://user-images.githubusercontent.com/96089187/154932347-bb1e3e64-a270-47ec-8de9-4d1b7b38a08e.png)
* By using SELECT COUNT(emp_no) FROM mentorship_eligibility, we see that 1,549 employees who were born between January 1, 1965 and December 31, 1965 are eligible to mentor the younger generation. 

4. Deeper dive into retiring employees and departments
* After obtaining the information above, we joined the Retirement Titles table with the Departments table in order to do a deeper dive into which department retiring employees fall under: 
![Screen Shot 2022-02-21 at 1 35 15 AM](https://user-images.githubusercontent.com/96089187/154927811-761b17c2-4b30-456f-bb68-3178a473a9e4.png)
Which resulted in this Unique Titles and Deptarment table (see first 14 rows): 
![Screen Shot 2022-02-21 at 1 38 11 AM](https://user-images.githubusercontent.com/96089187/154928324-6fc3c77d-f27f-4040-93fc-162f49d4708d.png)
* From there, the following code was utilized to further break down the department, position titles, and number of positions that would be needed to be fulfilled when employees begin to retire: 
![Screen Shot 2022-02-21 at 1 39 59 AM](https://user-images.githubusercontent.com/96089187/154928627-f5191988-8b62-4b92-81b6-6af225f92118.png)
Which resulted into this Roles To Fill table (see first 14 rows): 
![Screen Shot 2022-02-21 at 1 49 28 AM](https://user-images.githubusercontent.com/96089187/154930273-82f51c0e-d493-4404-88ef-e9672914281d.png)
The following code further aggregated the Department name and total positions in the department: 
![Screen Shot 2022-02-21 at 1 51 31 AM](https://user-images.githubusercontent.com/96089187/154930665-7af2ea13-38c9-46f0-8f97-4d831173ff04.png)
* We see that the departments with the largest impact are the Development (23,937 positions), Production (20,561 positions), and Sales  (14,593 positions) departments. 
![Screen Shot 2022-02-21 at 1 53 28 AM](https://user-images.githubusercontent.com/96089187/154931031-115c255e-b46e-40b2-b792-0a75a60bed38.png)

5. Senior titles
* To further investigate senior titles or positions, the following code pulled senior positions including Senior Engineer, Senior Staff, Technique Leader, and Managers to determine employees in high positions who can serve as a mentor to the younger generation: 
![Screen Shot 2022-02-21 at 2 08 47 AM](https://user-images.githubusercontent.com/96089187/154933823-da8e3dff-d946-4d37-b3d1-9527ee39437c.png)
Which outputted the following table (see top 14 rows):
![Screen Shot 2022-02-21 at 2 09 44 AM](https://user-images.githubusercontent.com/96089187/154934001-1b8a2962-9b5a-4686-aa45-5f190bc7e81c.png)
* The top three (3) highest number of senior titles include 13,881 Senior Engineers from the Development Department, 11,848 Senior Engineers from the Production Department, and 10,225 Senior Staff from the Sales Department. 

# Summary: 
Pewlett Hackard is headed in the right direction to plan and prepare for the "silver tsunami" as the company has an incredible large number of employees who are retiring. The key take aways are as follow:
* 72,458 employees are getting ready for retirement and therefore the same amount of retirement packages and positions will need to be fulfilled.
* The top two (2) positions with the highest amount of employees who are getting ready to retire are 25,916 Senior Engineers and 24,926 Senior Staff.
* 1,549 employees who were born between January 1, 1965 and December 31, 1965 are eligible to mentor the younger generation. 
* The departments with the largest impact of retirees will be the Development (23,937 positions), Production (20,561 positions), and Sales  (14,593 positions) departments. 
* There are 62,173 retiring employees with senior titles. The top three (3) highest number of senior titles include 13,881 Senior Engineers from the Development Department, 11,848 Senior Engineers from the Production Department, and 10,225 Senior Staff from the Sales Department. 
* If Pewlett Hackard plan accordingly by department, including starting a mentorship program now, the company may be able to train up enough of their staff to hold senior positions within the next few months as many employees are getting ready for retirement.  
