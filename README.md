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

# Excel 'Reformatting'
- Data that was used in the excel sheet was 'population'
- To avoid having to JOIN tables in the SQL workspace, the column 'population' was cut and added to the first 26 columns
- Every other column was then omitted, creating the first table "CovidDeaths"
