﻿-- to check for the right dataset
SELECT *
FROM `firstsql3456.PortfolioProject.CovidDeaths`
WHERE continent is null
ORDER BY 3,4;
 
-- to check for the right dataset
SELECT *
FROM `firstsql3456.PortfolioProject.CovidVaccinations`
ORDER BY 3,4;
 
-- selecting the data to be used
SELECT Location, date, total_cases, new_cases, total_deaths, population
FROM `firstsql3456.PortfolioProject.CovidDeaths`
WHERE continent is null
ORDER BY 1,2;
 
-- looking at Total Cases vs Total Deaths in Kenya
-- This query should show the likelihood of dying if you contract COVID in KE
 
SELECT Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
FROM `firstsql3456.PortfolioProject.CovidDeaths`
-- WHERE location like '%Kenya%'
WHERE continent is null
ORDER BY 1,2;
 
--Total cases vs population
-- To show what percentage of the Kenyan Population got COVID
SELECT Location, date, population, total_cases, (total_cases/population)*100 as DeathPercentage
FROM `firstsql3456.PortfolioProject.CovidDeaths`
-- WHERE location like '%Kenya%'
WHERE continent is null
ORDER BY 1,2;




 
--Which countries have the highest infection rate compared to population
SELECT Location, population, MAX(total_cases) as HighestInfectionCount, MAX(total_cases/population)*100 as PercentInfected
FROM `firstsql3456.PortfolioProject.CovidDeaths`
-- WHERE location like '%Kenya%'
WHERE continent is null
GROUP BY Location, population
ORDER BY 1,2;
 
 
-- Countries with the highest death per population
SELECT Location, MAX(cast(total_deaths as int)) as TotalDeathCount
FROM `firstsql3456.PortfolioProject.CovidDeaths`
-- WHERE location like '%Kenya%'
WHERE continent is null
GROUP BY Location
ORDER BY TotalDeathCount DESC;


-- BY CONTINENT
SELECT continent, MAX(cast(total_deaths as int)) as TotalDeathCount
FROM `firstsql3456.PortfolioProject.CovidDeaths`
WHERE continent is not null
GROUP BY continent
ORDER BY TotalDeathCount desc;


-- GLOBAL DEATH PERCENTAGE
SELECT sum(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(new_cases)*100 as DeathPercentage
FROM `firstsql3456.PortfolioProject.CovidDeaths`
-- WHERE location like '%Kenya%'
WHERE continent is not null
--GROUP BY date
ORDER BY 1,2;