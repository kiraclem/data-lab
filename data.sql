  CREATE TABLE users (
    user_id SERIAL PRIMARY KEY
    username VARCHAR(40)
    email VARCHAR(60)
    password VARCHAR(255)
   );

  CREATE TABLE recipe (
    recipe_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    instructions VARCHAR,
    recipe_name VARCHAR(50)
   );

   CREATE TABLE ingredients (
    ingredients_id SERIAL PRIMARY KEY,
    ingredient_name VARCHAR(50)
   );

   CREATE TABLE ingredient_photo (
    photo_id SERIAL PRIMARY KEY,
    ingredients_id VARCHAR(50) REFERENCES ingredients(ingredients_id)
   );
 
   CREATE TABLE recipe_ingredient (
    recipe_ingredient_id SERIAL PRIMARY KEY,
    recipe_id INTEGER REFERENCES recipe(recipe_id),
    user_id INTEGER REFERENCES users(user_id)
   );

   CREATE TABLE private (
    private_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    recipe_id INTEGER REFERENCES recipe(recipe_id)
   );

    CREATE TABLE public (
    private_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    recipe_id INTEGER REFERENCES recipe(recipe_id),
    likes INTEGER
   );

   CREATE TABLE occasions (
    occasions_id SERIAL PRIMARY KEY,
     user_id INTEGER REFERENCES users(user_id),
     title VARCHAR(50)
   );

   CREATE TABLE recipie_occasions (
    recipie_occasions_id SERIAL PRIMARY KEY,
    recipe_id INTEGER REFERENCES recipe(recipe_id),
    occasions_id INTEGER REFERENCES occasions(occasions_id),
   );

   CREATE TABLE grocery (
    grocery_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    ingredients_id INTEGER REFERENCES ingredients(ingredients_id)
   );


