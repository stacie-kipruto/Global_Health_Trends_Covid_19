# CovidDeathsSQL 
This is a simple project to showcase the fundamentals of BigQuery i.e:
 - Storage of large data
 - Ingestion
 - Querying
 
# Extraction of Data
- Data was extracted from the website https://ourworldindata.org/covid-deaths
- After extracting the data in a csv format, I loaded the data into Excel and attempted to reformat the data.
- There's a lot of data and noise in the dataset and you only need a few elements depending on your research question.
- This project had no specific research question, just a basic exploratory project.

# Excel Reformatting
## CovidDeaths.csv and CovidVaccines.csv
- The original dataset was extracted from the website linked above
- Different variables were chosen for the CovidDeaths and CovidVaccines csv files
- To avoid having to JOIN multiple tables in the SQL workspace for every variable, only two tables were extracted from the main csv file.

# Ingestion - BigQuery
- On the BigQuery Platform, use an SQL workbench and create a project.
- At the base of your project, create a table and upload your table by clicking "create table" and upload the two CSV's

# Querying
- Query the dataset to check that the right dataset has been uploaded.
