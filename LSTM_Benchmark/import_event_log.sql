-- Change the event log path for each table

CREATE TABLE IF NOT EXISTS bpic11 (
	case_id VARCHAR(50),
	activity VARCHAR(100),
	resource VARCHAR(100),
	timestamps timestamp
);

COPY bpic11
FROM 'C:\Users\mithr\Desktop\dataset\bpic11.csv'
DELIMITER ',' CSV HEADER;


CREATE TABLE IF NOT EXISTS bpic12 (
	case_id VARCHAR(50),
	activity VARCHAR(100),
	resource VARCHAR(100),
	timestamps timestamp
);

COPY bpic12 
FROM 'C:\Users\mithr\Desktop\dataset\bpic12.csv'
DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS bpic13i (
	case_id VARCHAR(50),
	activity VARCHAR(100),
	resource VARCHAR(100),
	timestamps timestamp
);

COPY bpic13i
FROM 'C:\Users\mithr\Desktop\dataset\bpic13i.csv'
DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS bpic15_1 (
	case_id VARCHAR(50),
	activity VARCHAR(100),
	resource VARCHAR(100),
	timestamps timestamp
);

COPY bpic15_1
FROM 'C:\Users\mithr\Desktop\dataset\bpic15_1.csv'
DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS bpic17a (
	case_id VARCHAR(50),
	activity VARCHAR(100),
	resource VARCHAR(100),
	timestamps timestamp
);

COPY bpic17a
FROM 'C:\Users\mithr\Desktop\dataset\bpic17a.csv'
DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS bpic18 (
	case_id VARCHAR(50),
	activity VARCHAR(100),
	resource VARCHAR(100),
	timestamps timestamp
);

COPY bpic18
FROM 'C:\Users\mithr\Desktop\dataset\bpic18.csv'
DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS bpic20permit (
	case_id VARCHAR(50),
	activity VARCHAR(100),
	resource VARCHAR(100),
	timestamps timestamp
);

COPY bpic20permit
FROM 'C:\Users\mithr\Desktop\dataset\bpic20permit.csv'
DELIMITER ',' CSV HEADER;