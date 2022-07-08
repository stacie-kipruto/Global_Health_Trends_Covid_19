-- JOINING TABLES; CovidDeaths and CovidVaccinations; assigned “dea” and “vac” to avoid repetition of the table location

SELECT *
FROM `firstsql3456.PortfolioProject.CovidDeaths` dea
JOIN `firstsql3456.PortfolioProject.CovidVaccinations` vac
  ON dea.location = vac.location
  AND dea.date = vac.date

-- Looking at Total Population vs Vaccinations
SELECT dea.continent, dea.location, dea.date, dea.population,vac.new_vaccinations
FROM `firstsql3456.PortfolioProject.CovidDeaths` dea
JOIN `firstsql3456.PortfolioProject.CovidVaccinations` vac
  ON dea.location = vac.location
  AND dea.date = vac.date
WHERE dea.continent is not null
ORDER BY 1,2;

-- Looking at Total Population vs Vaccinations
SELECT dea.continent, dea.location, dea.date, dea.population,vac.new_vaccinations
, SUM(vac.new_vaccinations) OVER (PARTITION BY dea.location) -- to partition by will add the total number of new vaccinations for one country then stop when it gets to another country
FROM `firstsql3456.PortfolioProject.CovidDeaths` dea
JOIN `firstsql3456.PortfolioProject.CovidVaccinations` vac
  ON dea.location = vac.location
  AND dea.date = vac.date
WHERE dea.continent is not null
ORDER BY 1,2;


-- Playing around with variables
-- Looking at Total Population vs Vaccinations with date, location and creating a new column

SELECT dea.continent, dea.location, dea.date, dea.population,vac.new_vaccinations
, SUM(CAST(vac.new_vaccinations AS int)) OVER(PARTITION BY dea.location ORDER BY dea.location, dea.date) AS RollingPeopleVaccinated
FROM `firstsql3456.PortfolioProject.CovidDeaths` dea
JOIN `firstsql3456.PortfolioProject.CovidVaccinations` vac
  ON dea.location = vac.location
  AND dea.date = vac.date
WHERE dea.continent is not null
ORDER BY 1,2;
