
-- Schema Name: saccodb
-- Username: sacco
-- Password: sacco123SaCco

-- These tables describe the database for a point of sale system

-- Make sure you have created a Postgres user with the above username, password
-- and appropriate permissions. For development environments, you can make the 
-- database user to be a superuser to allow for copying of external files. 

-- Then run the "dbSetup.sh" script in the bin folder of this project.

\c postgres

-- Then execute the following:
DROP DATABASE IF EXISTS saccodb; -- To drop a database you can't be logged into it. Drops if it exists.
CREATE DATABASE saccodb;

-- Connect with the database on the username
\c posdb sacco



-- =========================
-- 1.  Customer Management
-- =========================

-- -------------------
-- Table customer
-- -------------------


CREATE TABLE  customer (
    Id SERIAL PRIMARY KEY,
    Uuid text UNIQUE NOT NULL,
    Status text,
    PhoneNo text,
    MessageId text,
    Cost text 

    

);
\COPY customer(Uuid,Status,PhoneNo,MessageId,Cost) FROM '/tmp/customer.csv' WITH DELIMITER AS '|' CSV HEADER
ALTER TABLE customer OWNER TO sacco;


