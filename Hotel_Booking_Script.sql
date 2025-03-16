---- View the Data Table -------
SELECT * FROM "HotelDataTable"

------ Deleting Null Values ------------

DELETE FROM "HotelDataTable"
WHERE country IS NULL

------ Removing Duplicates ---------------
CREATE VIEW new_table AS
SELECT DISTINCT * FROM "HotelDataTable"

--------- Print New Table ---------------------

SELECT * FROM new_table


----- Meal Type put in the bookings -------

SELECT meal, COUNT(meal)
FROM new_table
GROUP BY meal
ORDER BY COUNT(meal) DESC

--------- Customer Type in the bookings ------------

SELECT customer_type, COUNT(customer_type)
FROM new_table
GROUP BY customer_type
ORDER BY COUNT(customer_type) DESC

-------- Completed bookings against cancelled ---------

SELECT reservation_status, COUNT(reservation_status)
FROM new_table
GROUP BY reservation_status
ORDER BY COUNT(reservation_status) DESC

------- Average Lead Time by Hotel --------------
SELECT hotel, AVG(lead_time)
FROM new_table
GROUP BY hotel

-------- Count of Hotel Type ----------------------
SELECT hotel, COUNT(hotel)
FROM new_table
GROUP BY hotel

--------- Bookings by countries --------------------
SELECT country, COUNT(country)
FROM new_table
GROUP BY country
ORDER BY COUNT(country) DESC

---------- Room Assigned ----------------------------
SELECT assigned_room_type, COUNT(assigned_room_type)
FROM new_table
GROUP BY assigned_room_type
ORDER BY COUNT(assigned_room_type) DESC

------ Room Reserved ------------------------------

SELECT reserved_room_type, COUNT(reserved_room_type)
FROM new_table
GROUP BY reserved_room_type
ORDER BY COUNT(reserved_room_type) DESC

--------- Deposit Type -----------------------------
SELECT deposit_type, COUNT(deposit_type)
FROM new_table
GROUP BY deposit_type
ORDER BY COUNT(deposit_type) DESC