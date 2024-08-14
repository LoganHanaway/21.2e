-- Comments in SQL Start with dash-dash --

-- Find the app with an ID of 1880
SELECT * FROM analytics WHERE id = 1880;

-- Find the ID and app name for all apps last updated on August 01, 2018
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

-- Count the number of apps in each category
SELECT category, COUNT(*) as app_count 
FROM analytics 
GROUP BY category 
ORDER BY app_count DESC;

-- Find the top 5 most-reviewed apps and their review count
SELECT app_name, reviews 
FROM analytics 
ORDER BY reviews DESC 
LIMIT 5;

-- Find the app with the most reviews and a rating >= 4.8
SELECT app_name, reviews, rating 
FROM analytics 
WHERE rating >= 4.8 
ORDER BY reviews DESC 
LIMIT 1;

-- Find the average rating for each category ordered by highest to lowest
SELECT category, AVG(rating) as avg_rating 
FROM analytics 
GROUP BY category 
ORDER BY avg_rating DESC;

-- Find the name, price, and rating of the most expensive app with a rating < 3
SELECT app_name, price, rating 
FROM analytics 
WHERE rating < 3 
ORDER BY price DESC 
LIMIT 1;

-- Find all apps with min_installs <= 50 that have a rating, ordered by highest rating first
SELECT app_name, rating, min_installs 
FROM analytics 
WHERE min_installs <= 50 AND rating IS NOT NULL 
ORDER BY rating DESC;

-- Find all apps with a rating < 3 and at least 10,000 reviews
SELECT app_name 
FROM analytics 
WHERE rating < 3 AND reviews >= 10000;

-- Find the top 10 most-reviewed apps costing between 10 cents and a dollar
SELECT app_name, reviews, price 
FROM analytics 
WHERE price BETWEEN 0.10 AND 1.00 
ORDER BY reviews DESC 
LIMIT 10;

-- Find the most out-of-date app
SELECT app_name, last_updated 
FROM analytics 
ORDER BY last_updated ASC 
LIMIT 1;

-- Find the most expensive app
SELECT app_name, price 
FROM analytics 
ORDER BY price DESC 
LIMIT 1;

-- Count all the reviews in the Google Play Store
SELECT SUM(reviews) as total_reviews 
FROM analytics;

-- Find all categories with more than 300 apps
SELECT category, COUNT(*) as app_count 
FROM analytics 
GROUP BY category 
HAVING COUNT(*) > 300;

-- Find the app with the highest proportion of min_installs to reviews among apps with at least 100,000 installs
SELECT app_name, reviews, min_installs, 
       (min_installs::float / reviews) as install_to_review_ratio
FROM analytics 
WHERE min_installs >= 100000 
ORDER BY install_to_review_ratio DESC 
LIMIT 1;
