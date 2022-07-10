# CovidDeathsSQL 

# About this Project
- This project aims to show the positivity and death rate of the COVID-19 virus. The raw data will be preprocessed using EXCEL, SQL workbench in BigQuery.
- This project also seeks to show the fundamentals of BigQuery which is:
  a) Storage of Big Data
  b) Ingestion
  c) Querying
- The goal is to analyse the number of deaths globally.
![Percent Population Infected](https://user-images.githubusercontent.com/66944986/178153233-12fbb6be-3340-4f29-a20b-e932486f1e57.png)

# Prerequisites
The following tools were used in this project;
- Excel
- BigQuery
- SQL 
- Tableau

# Extraction of the Dataset
- The Covid Dataset includes raw data on confirmed cases and deaths from Johns Hopkins University (JHU) and is publicly available on the website https://ourworldindata.org/
- The dataset is quite large and coud not be uploaded on GitHub.
![columns](https://user-images.githubusercontent.com/66944986/178154444-45ce0131-66d0-4bbd-9b25-5b2b4528d1c9.png)
![rows](https://user-images.githubusercontent.com/66944986/178154455-2f41f6e4-37ba-4656-9fee-8604eb365fcf.png)

# Preprocessing
- The dataset contains a lot of unnecessary information for the analysis. This project seeks to showcase:
  1. The Total number of deaths per continent.
  2. The Percent Population Infected per country.
- The dataset was loaded into Excel and slight reformattng was done.
- Columns that were not necessary were deleted and the main variables that guided this project included:
  _i_) Total number of deaths,
  _ii_) Population
  _iii_) Total number of vaccinated persons.
- To avoid having to join multiple tables on SQL for every variable, only two tables were extracted from the main .csv file

# Ingestion - BigQuery
- The two tables were then loaded onto BigQuery to analyse the data using various SQL queries

# Querying
- A sample of the queries that were written to explore the data and join the two tables can be found on this link (https://console.cloud.google.com/bigquery?sq=931240212867:ebf14e8c0104404a9b37b5b6d63f2a89) or on the file PortfolioSeries.sql(https://github.com/stacie-kipruto/CovidDeathsSQL/blob/main/PortfolioSeries.sql)

# Extraction and Visualisation
- After querying and arriving at the right questions, the data was extracted into (4) .csv files which was then visualized on the Tableau Platform to create an interactive dashboard.
- The link to the public dashboard can be found on https://public.tableau.com/app/profile/stacey.kipruto/viz/CovidDashboardPortfolio_16573154928880/Dashboard1

# Limitations
- Tableau is not a natively live streaming tool. The data for this project is current and the visuals presented on the dashboard will only show the numbers for the date in which the project was posted.
