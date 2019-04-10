-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

BEGIN;

-- CREATE statements go here
DROP TABLE IF EXISTS app_user;

CREATE TABLE app_user (
  id SERIAL PRIMARY KEY,
  user_name varchar(32) NOT NULL UNIQUE,
  password varchar(32) NOT NULL,
  role varchar(32),
  salt varchar(255) NOT NULL
);

CREATE TABLE profile (
  profile_id SERIAL PRIMARY KEY,
  first_name varchar(64) NOT NULL,
  last_name varchar(64) NOT NULL,
  email NVARCHAR(150) NOT NULL UNIQUE,
  country VARCHAR(64),
  state_or_province VARCHAR(64)
);

CREATE TABLE exercise_stats (
total_workouts integer,
total_donated bigint
);

CREATE TABLE shop (

);

CREATE TABLE exercises (

);



COMMIT;