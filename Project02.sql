USE PROJECT02;


SELECT * 
FROM GITHUBINDIA;

# 1> Total Number of Users
SELECT COUNT(username) AS total_users 
FROM githubindia;

# 2> Total Number of Repositories
SELECT SUM(repositories) AS total_repositories 
FROM githubindia;

# 3>  Average Number of Followers per User
SELECT AVG(followers) AS avg_followers 
FROM githubindia;

# 4> Total Number of Stars Received
SELECT SUM(stars) AS total_stars 
FROM githubindia;

# 5> Users with More Than 100 Contributions in Last Year
SELECT COUNT(username) AS active_contributors 
FROM githubindia 
WHERE last_year_contributions > 100;

# 6> Top 3 Users with the Highest Contributions
SELECT username, last_year_contributions 
FROM githubindia 
ORDER BY last_year_contributions DESC 
LIMIT 3;

# 7> Most Popular Programming Language
SELECT language, COUNT(username) AS user_count 
FROM githubindia 
GROUP BY language 
ORDER BY user_count DESC 
LIMIT 1;

# 8> Users Who Have README Files
SELECT COUNT(username) AS users_with_readme 
FROM githubindia 
WHERE has_readme = 'TRUE';

# 9>  Top 3 Users with the Most Followers
SELECT username, followers 
FROM githubindia 
ORDER BY followers DESC 
LIMIT 3;

# 10> Users Who Joined Before 2020
SELECT COUNT(username) AS users_joined_before_2020 
FROM githubindia 
WHERE joining_year < 2020;






