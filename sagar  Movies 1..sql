use movies;
select * from moviessa;
-- Retrieve the names of all the Bollywood movies which are of drama genre in the dataset.
select Movie_Name,Genre from moviessa where Genre='drama';
-- 2.Retrieve the names of all the Bollywood movies of Amir Khan in the dataset.
select Movie_name from moviessa where Lead_Star ='Aamir Khan';
--3. Retrieve the names of all the Bollywood movies which are directed by RamGopal Verma in the dataset.
select Movie_name from moviessa where Director ='Ram Gopal Verma';
-- 4.Retrieve the names of all the Bollywood movies which have been released over more than 1000 number of screens in the dataset.
select Movie_Name from moviessa where Number_of_Screens>1000;
-- 5.Retrieve the names of all the Bollywood movies which have generated Revenue(INR)more than 700000000 in the dataset.
select Movie_Name from moviessa where Revenue>700000000;
-- 6.Retrieve the names of all the Bollywood movies which have budget less than 1cr in the dataset.
select Movie_Name from moviessa where budget>10000000;
-- 7.Retrieve the names of all the Bollywood movies which are flop in the dataset.
Select Movie_name from moviessa where Revenue - Budget  <0;
-- 8.Retrieve the names and profit of all the Bollywood movies in thedataset.
Select Movie_name from movies where Revenue - Budget >0;
-- 9.Retrieve the names and loss of all the Bollywood movies in the dataset.
Select Movie_name,Revenue from moviessa where Revenue - Budget  <0;
-- 10. Retrieve the names of all the Bollywood movies which have been released on holidays in the dataset
select Movie_Name from moviessa where Release_Period='Holiday';
-- 11.Retrieve the names of all the Bollywood movies which have lead star as Akshay Kumar and directed by Priyadarshan in the
select Movie_name from moviessa where Lead_Star ='Akshay Kumar' and Director='Priyadarshan';
--  12.Retrieve the names of all the Bollywood movies starting with ‘a’ in the dataset.
select Movie_Name from moviessa where Movie_Name like 'a%';
-- 13. Retrieve the names of all the Bollywood movies ending with ‘a’ in the dataset.
select Movie_Name from moviessa where Movie_Name like '%a';
-- 14. Retrieve the names of all the Bollywood movies having ‘a’ at second place of the name in the dataset.
select Movie_Name from moviessa where Movie_Name like '_a%';
-- 15. Retrieve the names of all the Bollywood movies having music of amit trivedi thedataset
select Movie_Name,Music_Director from moviessa where Music_Director='amit trivedi';
-- 16. Retrieve the names of all the comedy movies of Akshay Kumar in the dataset.
select Movie_Name,Genre from moviessa where Lead_Star='Akshay Kumar' and Genre='comedy';
-- 17. Retrieve the names of movies and star name starring khan in the dataset.
Select Movie_name from moviessa where Movie_name like 'khan%';
-- 18. Retrieve all the information of movies race and race2 in the dataset
SELECT * FROM moviessa WHERE Movie_name in  ('Race', 'Race 2');
-- 19. Retrieve the names of all the thriller Bollywood movies in the dataset.
select  Movie_Name,Genre from moviessa where Genre='thriller';
-- 20. Retrieve the names and budget of all the Bollywood movies according to the highest budget to lowest budget in the dataset.
select  Movie_Name,budget from moviessa order by budget desc ;
-- 21. Retrieve the names and budget of top 5 Bollywood movies with highest budget in the dataset.
select  Movie_Name,budget from moviessa order by budget desc limit 5;
-- 22. Retrieve the names of top 10 Bollywood movies with highest revenue generation in the dataset.
select  Movie_Name,revenue from moviessa order by revenue desc limit 10;
-- 23. Retrieve the names of top 5 movies of salman khan in the dataset.
select  Movie_Name,revenue,Lead_Star from moviessa where Lead_Star='salman khan' order by revenue desc limit 5;
-- 24. Retrieve the names of top 5 floped movies in the dataset.
Select Movie_name,Revenue from moviessa where Revenue - Budget <0 order by Revenue limit 5;
-- 25. Retrieve the names of top 5 hit movies in the dataset.
select  Movie_Name,revenue from moviessa order by revenue desc limit 5;
-- 26. Which is the second movie released on maximum screens.
select  Movie_Name,number_of_screens from moviessa order by number_of_screens desc limit 1,1;
-- 27. Which is the 10th movies with highest budget.
select  Movie_Name,budget from moviessa order by budget desc limit 10;
-- 28. Which is the 2nd movie of Amitabh Bachchan with highest budget.
select  Movie_Name,Lead_Star from moviessa order by Budget desc limit 1,1;
-- 29. Which are the flopped movies of Akshay Kumar
select Movie_name from moviessa where lead_star = 'Akshay Kumar' and (revenue - budget) < 0;
-- 30. With which director Sharukh Khan have given the biggest hit movie 
select Director from moviessa where lead_star = ' Shahrukh Khan' order by  (revenue - budget) desc ;