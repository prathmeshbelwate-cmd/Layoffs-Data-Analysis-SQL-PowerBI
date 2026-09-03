-- explatory data analysis

select*
from layoffs_staging2;

--   Maximum Layoffs and Highest Layoff Percentage in a Single day
select max(total_laid_off), max(percentage_laid_off)
from layoffs_staging2;

--  Companies with 100% Workforce Layoffs :
select*
from layoffs_staging2
where percentage_laid_off = 1 
order by total_laid_off desc;

-- Companies with 100% Layoffs and the Highest Funding :
select*
from layoffs_staging2
where percentage_laid_off = 1 
order by funds_raised_millions desc;

-- Companies with the Highest Total Layoffs :
select company , sum(total_laid_off)
from layoffs_staging2
group by company
order by sum(total_laid_off) desc;

--  Time Period Covered by the Dataset:
select min(`date`), max(`date`)
from layoffs_staging2;

-- Industries Most Affected by Layoff :
select industry, sum(total_laid_off)
from layoffs_staging2
group by industry
order by sum(total_laid_off) desc;

-- Countries with the Highest Number of Layoffs .
select country , sum(total_laid_off)
from layoffs_staging2
group by country
order by sum(total_laid_off) desc;


select*
from layoffs_staging2;

-- Yearly Layoff Distribution :
select year(`date`), sum(total_laid_off)
from layoffs_staging2
group by year(`date`)
order by 1 desc;

-- Layoffs by Company Stage : 
select stage, sum(total_laid_off)
from layoffs_staging2
group by stage
order by 2 desc;

-- Monthly Layoff Trends( 2022-2023 ):
select substring(`date`,1,7) as `year\month`, sum(total_laid_off)
from layoffs_staging2
where substring(`date`,1,7) is not null
group by  substring(`date`,1,7)
order by 1
;

-- Cumulative / Rolling Total of Layoffs Over Time 
with rolling_total as 
(select substring(`date`,1,7) as `year\month`, sum(total_laid_off) as total_off
from layoffs_staging2
where substring(`date`,1,7) is not null
group by  substring(`date`,1,7)
order by 1

)
select `year\month`, total_off,
 sum(total_off) over(order by `year\month` ) as rolling_total_laid_off
from rolling_total;


select company , sum(total_laid_off)
from layoffs_staging2
group by company
order by sum(total_laid_off) desc;

-- Company Layoffs by Years : 
select company ,year(`date`), sum(total_laid_off)
from layoffs_staging2
group by company, year(`date`)
order by 3 desc;

-- Top 5 Companies with the Highest Layoffs Each Year :
with company_year (company, years , total_laid_off) as 
(
select company ,year(`date`), sum(total_laid_off)
from layoffs_staging2
group by company, year(`date`)
), company_year_rank as
(
select* , 
dense_rank () over(partition by years order by total_laid_off desc) as ranking 
from company_year
where years is not null 
)
select* 
from company_year_rank 
where ranking <= 5;

-- Top 5 Industries with the Highest Layoffs Each Year :
select*
from layoffs_staging2;

with industry_year_layoff (industry, years , total_laid_off  ) as
(
select industry, year(`date`) , sum(total_laid_off) 
from layoffs_staging2
group by  industry , year(`date`) 
) , industry_layoff_rank as 
(
select*,
dense_rank()over(partition by years order by total_laid_off desc) as layoff_rank
from  industry_year_layoff
where years is not null
)
select*
from industry_layoff_rank
where layoff_rank <= 5 and total_laid_off  is not null 
;
