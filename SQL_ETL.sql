CREATE TABLE obesity(
	state_name VARCHAR PRIMARY KEY,
	obesity DECIMAL
);

SELECT * FROM obesity;


CREATE TABLE states_table(
	state_name VARCHAR,
	FOREIGN KEY (state_name) REFERENCES obesity(state_name),
	state_abv VARCHAR PRIMARY KEY
);

SELECT * FROM states_table;


CREATE TABLE fast_food(
	state_abv VARCHAR,
	FOREIGN KEY (state_abv) REFERENCES states_table(state_abv),
	ff_count INT
);

SELECT * FROM fast_food;



SELECT o.state_name, f.state_abv, o.obesity, f.ff_count
FROM obesity o
JOIN states_table s ON s.state_name = o.state_name
JOIN fast_food f ON s.state_abv = f.state_abv;

