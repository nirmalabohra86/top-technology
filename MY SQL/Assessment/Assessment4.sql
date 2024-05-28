-- 1. Retrieve the details of cars with prices greater than the average price.
select * from cars where price > (select avg(price) from cars);

-- 2. Retrieve the brand and model of the car with the highest mileage. 
select brand , model from cars where mileage = (select max(mileage) from cars);

-- 3. List cars with prices higher than the average price of cars with the fuel type = 'Gasoline'.

-- select avg(price) from cars where fueltype = 'gasoline';
-- 47053.107895
select * from cars 
where price>(select avg(price) from cars) and fueltype = 'gasoline';

-- 4. Find the brand with the most car models in the dataset.
select brand from cars 
group by brand 
order by count(model) desc 
limit 1;


-- 5. Retrieve cars with prices closest to the average price, rounded to the nearest hundred.
select * from cars 
where round(price,-2) = (select round(avg(price),-2) from cars);

-- 6. List cars with prices higher than the average price of cars manufactured in the year 2021.
select * from cars 
where price > (select avg(price) from cars) and  year = 2021;

-- 7. Find the model of the cheapest car among those with a V8 engine.
select model, enginetype from cars 
where  enginetype = 'v8' 
order by price asc 
limit 1;

-- 8. Retrieve brands with more than two car models in the dataset.
select brand,count(model)AS Number_Of_Model from cars 
group by brand 
having count(model)>2;

-- 9. List cars with prices higher than the average price of cars with the same transmission type and fuel type.
 select * from cars  where price > (select avg(price)  from cars As avg_price 
 where cars.transmissiontype = avg_price.transmissiontype and cars.fueltype = avg_price.fueltype); 


-- 10. Find the brand with the highest total mileage across all models
select brand , sum(mileage) from cars 
group by brand , model 
order by sum(mileage) desc 
limit 1;