CREATE SCHEMA IF NOT EXISTS sep4dk1;
SET SCHEMA 'sep4dk1';

CREATE TABLE IF NOT EXISTS "Weather"(
    time BIGINT NOT NULL,
    temperature FLOAT,
    humidity FLOAT,
    wind_direction INT,
    wind_speed FLOAT,
    precipitation FLOAT,
    light FLOAT,
    PRIMARY KEY (time)
);

CREATE TABLE IF NOT EXISTS "Model"(
    name VARCHAR(3) NOT NULL,
    major_version INT NOT NULL,
    minor_version INT NOT NULL,
    trained_at BIGINT,
    PRIMARY KEY (name, major_version, minor_version)
);

CREATE TABLE IF NOT EXISTS "WeatherPrediction"(
    predicted_time BIGINT NOT NULL,
    prediction_offset INT NOT NULL,
    temperature FLOAT,
    humidity FLOAT,
    wind_direction INT,
    wind_speed FLOAT,
    precipitation FLOAT,
    light FLOAT,
    model_name VARCHAR(3) NOT NULL,
    model_major_version INT NOT NULL,
    model_minor_version INT NOT NULL,
    PRIMARY KEY (predicted_time, prediction_offset, model_name, model_major_version, model_minor_version),
    FOREIGN KEY (model_name, model_major_version, model_minor_version) REFERENCES "Model"(name, major_version, minor_version)
);

