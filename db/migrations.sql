CREATE DATABASE chicago_recommendations;
\c chicago_recommendations
  CREATE TABLE recommendations (id SERIAL PRIMARY KEY, place TEXT, contributor TEXT, notes TEXT, type_of_place TEXT);
