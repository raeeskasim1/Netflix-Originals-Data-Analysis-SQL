# Netflix-Originals-Data-Analysis-SQL

## objective

The goal of this project is to analyze the **Netflix Originals** dataset using **MySQL** to uncover patterns and insights related to content genres, IMDb ratings, and runtime characteristics. This hands-on SQL project helps develop core skills needed for **data analyst** roles.

By using advanced SQL features like `GROUP BY`, `HAVING`, `ORDER BY`, `LIMIT`, `JOINS`, `WINDOW FUNCTIONS`, and `SUBQUERIES`, we explore key trends in Netflix’s original content.

## Dataset
- **Netflix_Originals.csv**: Title, Genre_ID, IMDb Score, Language, Runtime, etc.
- **Genre_Details.csv**: Genre ID and Genre Name

## Analysis Performed

● What are the average IMDb scores for each genre of Netflix Originals?  
● Which genres have an average IMDb score higher than 7.5?  
● List Netflix Original titles in descending order of their IMDb scores.  
● Retrieve the top 10 longest Netflix Originals by runtime.  
● Retrieve the titles of Netflix Originals along with their respective genres.  
● Rank Netflix Originals based on their IMDb scores within each genre.  
● Which Netflix Originals have IMDb scores higher than the average IMDb score of all titles?  
● How many Netflix Originals are there in each genre?  
● Which genres have more than 5 Netflix Originals with an IMDb score higher than 8?  
● What are the top 3 genres with the highest average IMDb scores, and how many Netflix Originals do they have?  

## Tools & Technologies Used

- **MySQL Workbench** – For writing and executing SQL queries  
- **SQL** – Used to analyze data through JOINs, GROUP BY, HAVING, subqueries, and window functions  
- **CSV Files** – Input datasets: Netflix_Originals.csv and Genre_Details.csv  
- **Notepad** – Used to write and organize queries and analysis explanation

## Project Structure

Netflix-Originals-Data-Analysis-SQL/  
├── Dataset/  
│ ├── Netflix_Originals.csv  
│ └── Genre_Details.csv  
├── SQL_Files/  
│ ├── queries.sql  
│ └── analysis_explanation.txt  
├── output/  
│ ├── avg_imdb_by_genre.csv  
│ ├── top_10_runtime.csv  
│ └── other_query_outputs.csv  
└── README.md  

##  How to Run

1. Open **MySQL Workbench**. 
2. Import the `Netflix_Originals.csv` and `Genre_Details.csv` files.
3. Execute the queries in `queries.sql`.
4. Export output results as CSV if needed.



## Key Insights

- Certain genres consistently maintain higher IMDb scores.
- Only a few genres have more than 5 highly-rated titles (IMDb > 8).
- Runtime does not always correlate with IMDb rating — short and long content can both perform well.


**Raees Kasim**  
🎓 MCA Graduate | AI & Data Science Enthusiast  
🌐 [[LinkedIn Profile UR](https://www.linkedin.com/in/raees-kasim-ke)]
