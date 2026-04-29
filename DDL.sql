CREATE SCHEMA IF NOT EXISTS sep4dk1;
SET SCHEMA 'sep4dk1';

CREATE TABLE IF NOT EXISTS "Weather"(
    time BIGINT,
    temperature FLOAT,
    humidity FLOAT,
    wind_direction INT,
    wind_speed FLOAT,
    precipitation FLOAT,
    light INT,
    PRIMARY KEY (time)
);

CREATE TABLE IF NOT EXISTS "WeatherPrediction"(
    predicted_time BIGINT,
    prediction_offset INT,
    temperature FLOAT,
    humidity FLOAT,
    wind_direction INT,
    wind_speed FLOAT,
    precipitation FLOAT,
    light INT,
    PRIMARY KEY (predicted_time, prediction_offset)
);
