
INSERT INTO author (author_id, first_name, last_name, bio, image_url) VALUES
(1, 'John', 'Doe', 'Chef specializing in Italian cuisine.', 'https://example.com/john.jpg'),
(2, 'Maria', 'Lopez', 'Baker with a love for pastries.', 'https://example.com/maria.jpg'),
(3, 'Akira', 'Tanaka', 'Expert in Japanese dishes.', 'https://example.com/akira.jpg'),
(4, 'Sara', 'Smith', 'Vegan recipe creator.', 'https://example.com/sara.jpg'),
(5, 'Liam', 'Brown', 'Grill master and BBQ lover.', 'https://example.com/liam.jpg');


INSERT INTO cookbook (cookbook_id, num_pages, cover_image_url, book_name, is_public, price) VALUES
(1, 120, 'https://example.com/cookbook1.jpg', 'Italian Classics', 1, 20),
(2, 200, 'https://example.com/cookbook2.jpg', 'Sweet Treats', 1, 25),
(3, 150, 'https://example.com/cookbook3.jpg', 'Sushi Secrets', 0, 30),
(4, 180, 'https://example.com/cookbook4.jpg', 'Vegan Delights', 1, 22),
(5, 100, 'https://example.com/cookbook5.jpg', 'BBQ Favorites', 0, 18);


INSERT INTO author_cookbook (author_id, cookbook_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);


INSERT INTO cuisine (cuisine_id, cuisine_name, origin_country, description) VALUES
(1, 'Italian', 'Italy', 'Famous for pasta and pizza.'),
(2, 'French', 'France', 'Known for fine dining and pastries.'),
(3, 'Japanese', 'Japan', 'Sushi, ramen, and more.'),
(4, 'Mexican', 'Mexico', 'Spicy and flavorful dishes.'),
(5, 'Indian', 'India', 'Rich in spices and curries.');


INSERT INTO category (category_id, category_name, description) VALUES
(1, 'Appetizer', 'Small dishes before the main course.'),
(2, 'Main Course', 'Hearty and filling dishes.'),
(3, 'Dessert', 'Sweet treats for the end of the meal.'),
(4, 'Salad', 'Healthy and fresh greens.'),
(5, 'Soup', 'Warm and comforting broths.');


INSERT INTO dish (dish_id, dish_name, cuisine_id, category_id, cookbook_id, dish_description, instructions, total_time_minutes, servings, difficulty_level) VALUES
(1, 'Spaghetti Carbonara', 1, 2, 1, 'Classic Italian pasta dish.', 'Boil pasta, cook pancetta, mix with eggs and cheese.', 30, 4, 'medium'),
(2, 'Croissant', 2, 3, 2, 'Buttery French pastry.', 'Prepare dough, fold butter, bake.', 120, 6, 'hard'),
(3, 'Sushi Roll', 3, 2, 3, 'Japanese rice and fish roll.', 'Roll rice, fish, and seaweed.', 40, 2, 'medium'),
(4, 'Taco', 4, 2, 5, 'Mexican tortilla with filling.', 'Prepare meat, veggies, assemble taco.', 25, 3, 'easy'),
(5, 'Lentil Soup', 5, 5, 4, 'Indian spiced lentil soup.', 'Cook lentils with spices.', 50, 5, 'easy');


INSERT INTO spice (spice_id, spice_name, price_per_gram, origin_region) VALUES
(1, 'Basil', 0.05, 'Mediterranean'),
(2, 'Cinnamon', 0.10, 'Sri Lanka'),
(3, 'Wasabi', 0.50, 'Japan'),
(4, 'Chili Powder', 0.08, 'Mexico'),
(5, 'Turmeric', 0.06, 'India');


INSERT INTO spice_dish (spice_id, dish_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);


INSERT INTO ingredient (ingredient_id, ingredient_name, calories_per_100g, price_per_100g, allergens) VALUES
(1, 'Tomato', 18, 1, NULL),
(2, 'Flour', 364, 2, 'Gluten'),
(3, 'Salmon', 208, 5, 'Fish'),
(4, 'Chicken', 239, 4, NULL),
(5, 'Lentils', 116, 2, NULL);


INSERT INTO ingredient_dish (ingredient_id, dish_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
