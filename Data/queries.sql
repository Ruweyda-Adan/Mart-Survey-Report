-- Question 1. Average Experience Rating by Age Group
SELECT AgeGroup, AVG(ExperienceRating) AS AvgExperienceRating
FROM survey_responses
GROUP BY AgeGroup;

-- Question 2. Total Spending by Product Category
SELECT ProductCategory, SUM(TotalSpending) AS TotalSpent
FROM survey_responses
GROUP BY ProductCategory;

-- Question 3 Number of Customers Interested in Promotions
SELECT InterestedInPromotions, COUNT(*) AS NumCustomers
FROM survey_responses
GROUP BY InterestedInPromotions;

-- Question 4. Customers Who Recommended the Product (RecommendScore = 10)
SELECT CustomerName, RecommendScore
FROM survey_responses
WHERE RecommendScore = 10;

-- Question 5. Products Most Frequently Purchased
SELECT ProductCategory, COUNT(*) AS Frequency
FROM survey_responses
GROUP BY ProductCategory
ORDER BY Frequency DESC;

-- Question 6. Average Total Spending by Visit Frequency
SELECT VisitFrequency, AVG(TotalSpending) AS AvgTotalSpending
FROM survey_responses
GROUP BY VisitFrequency;

-- Question 7. Top 3 Products with the Highest Spending
SELECT ProductCategory, SUM(TotalSpending) AS TotalSpent
FROM survey_responses
GROUP BY ProductCategory
ORDER BY TotalSpent DESC
LIMIT 3;

-- Question 8. Most Common Location of Customers
SELECT Location, COUNT(*) AS NumCustomers
FROM survey_responses
GROUP BY Location
ORDER BY NumCustomers DESC
LIMIT 1;

-- Question 9. Suggestions for Improvement
SELECT ImprovementSuggestions, COUNT(*) AS Frequency
FROM survey_responses
GROUP BY ImprovementSuggestions
ORDER BY Frequency DESC;

-- Question 10. Top 5 Customers with the Highest Total Spending
SELECT CustomerName, SUM(TotalSpending) AS TotalSpent
FROM survey_responses
GROUP BY CustomerName
ORDER BY TotalSpent DESC
LIMIT 5;