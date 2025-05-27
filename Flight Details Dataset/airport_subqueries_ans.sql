#AIRPORT DATASET
--------------------------------------------------------
#Subqueries can be used in 3 different ways
#1. With WHERE
#2. With FROM 
#3. WITH SELECT

#Solve Question 1,2,3 and observe the answers. 
--------------------------------------------------------
#1. Find all flights operated by airlines that had at least one cancelled flight.
#(Subquery in the WHERE Clause)
SELECT *
FROM flight_details
	WHERE airline IN (
						SELECT 
							DISTINCT airline
						FROM flight_details
							WHERE status = 'Cancelled'
				);

#2. Find the average delay time (in minutes) per airline — use a subquery to first calculate delay minutes.
#(Subquery in the FROM Clause)
SELECT 
	airline, 
    ROUND(AVG(delay_time),2) AS delay_avg
FROM(
		SELECT 
		airline,
		((HOUR(actual_time) * 60 + MINUTE(actual_time)) - (HOUR(scheduled_time) * 60 + MINUTE(scheduled_time))) AS delay_time
FROM flight_details WHERE status='Delayed'
	) AS delays
	GROUP BY airline;

#3. For each airline, show the number of flights and the number of cancelled flights using a subquery.
#(Subquery in the SELECT Clause)
SELECT 
	COUNT(flight_number) AS flight_cnt, airline, 
    (SELECT COUNT(flight_number) FROM flight_details f2 WHERE f2.airline = f1.airline and  status='Cancelled') AS cancelled_flights
FROM flight_details f1
	GROUP by airline;

#4. Find all flights by airlines that had at least one cancelled flight.
SELECT * 
FROM flight_details 
	WHERE airline IN (
						SELECT DISTINCT airline
						FROM flight_details
						WHERE status = 'Cancelled'
					);

#5. List all flights (regardless of status) going to or coming from destinations 
#where at least one flight was cancelled.
SELECT * 
FROM flight_details
	WHERE destination_or_origin IN (
											SELECT DISTINCT destination_or_origin 
                                            FROM flight_details
												WHERE status = 'Cancelled'
									);

#6. List cancelled flights that were assigned to a gate that has also seen on-time flights.
SELECT * 
FROM flight_details
	WHERE status = 'Cancelled' and 
    gate IN
			(SELECT 
				gate
			FROM flight_details
				WHERE status = 'On Time'
			);

#7. List flights by airlines that have never had a cancelled flight.
SELECT * 
FROM flight_details 
	WHERE airline NOT IN (
							SELECT DISTINCT airline 
							FROM flight_details 
							WHERE status IN ('Cancelled')
							);

#8. Show all flights to destinations where no flight was on time.
SELECT * 
FROM flight_details 
	WHERE flight_number NOT IN (
								SELECT
									flight_number
								FROM flight_details
									WHERE status IN('On Time')
							);

#9. List flights scheduled before any delayed flight.
SELECT * 
FROM flight_details
	WHERE scheduled_time < ANY (
									SELECT scheduled_time
									FROM flight_details
									WHERE status = 'Delayed'
							);

#10. Show flights scheduled after any cancelled flight.
SELECT * 
FROM flight_details
				WHERE scheduled_time < ANY (
												SELECT scheduled_time
												FROM flight_details
												WHERE status = 'Cancelled'
											);

#11. Show flights that were scheduled after all cancelled flights.
SELECT * 
FROM flight_details
	WHERE scheduled_time < ALL (
									SELECT scheduled_time
									FROM flight_details
									WHERE status = 'Cancelled'
								);

#12. List airlines where every flight is on time.
SELECT *
FROM flight_details
	WHERE flight_number IN (
								SELECT
									flight_number
								FROM flight_details
									WHERE status = 'On Time'
						);

-- Advanced SQL Subqueries – Big Tech Inspired Questions
-- Q1: Find all delayed flights where the delay is greater than the average delay for that airline.
#(Delayed More Than Airline Average (inspired by Amazon-style analytics))
SELECT * FROM flight_details;
SELECT 
	*
    FROM flight_details f1
		WHERE status = 'Delayed' and (HOUR(actual_time) * 60 + MINUTE(actual_time)) - (HOUR(scheduled_time) * 60 + MINUTE(scheduled_time)) >
(SELECT
	airline,
	AVG((HOUR(actual_time) * 60 + MINUTE(actual_time)) - (HOUR(scheduled_time) * 60 + MINUTE(scheduled_time)))AS delay_mins_avg
FROM flight_details f2
    WHERE f1.airline = f2.airline and status = 'Delayed'
GROUP BY airline
    );

-- Q2: For each terminal, find the gate used most frequently.
#(Most Frequently Used Gate per Terminal (Google-style grouped max pattern))
SELECT * FROM flight_details;
SELECT 
	terminal, 
    gate, 
    MAX(gate_cnt) 
FROM 
	(
		SELECT 
			terminal, 
            gate, 
            COUNT(gate) AS gate_cnt
		FROM flight_details
		GROUP BY terminal, gate
	) as most_freq
		GROUP BY terminal, gate
		ORDER BY terminal, gate;

-- Q3: List all flight numbers that were always on time (never delayed or cancelled).
#(Flights That Were Always On Time (Facebook-style consistency check))

-- Q4: List airlines whose average delay is higher than the overall average delay.
#(Airlines with Above-Average Delays (Overall) (Microsoft-style aggregate filtering))

-- Q5: List the airline(s) with the highest number of total flights.
#(Find the Busiest Airline by Number of Flights (Amazon-style top-k filter))