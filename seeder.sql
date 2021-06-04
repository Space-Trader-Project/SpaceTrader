use spacetrader_db;

INSERT INTO users(first_name, last_name, user_name, email, password)
VALUES ('Roland', 'Valdez', 'rv', 'roland@codeup.com','roland'),
       ('Timothy', 'Lefkowitz', 'tl', 'tim@codeup.com','tim'),
       ('Salim', 'Ahmedabadi', 'sa', 'salim@codeup.com','salim'),
       ('John', 'Pierce', 'jp', 'john@codeup.com','john'),
       ('Kenyon', 'Luce', 'kl', 'kenyon@codeup.com','kenyon');

INSERT INTO ads(user_id, title, description, categories, quantity, price)
VALUES (1, 'Selling TV', 'New TV in box', 'electronics',1, 100),
       (2, 'Selling Computer', 'New Macbook Pro', 'electronics',1, 500),
       (3, 'Selling Washing Machine', 'Used Maytag 2019 model', 'appliance', 1, 800),
       (4, 'Selling Car', 'Used 2016 Ford F-150', 'automobile',1, 5000),
       (5, 'Selling House', '3 bedroom 2 bath 2 car garage in Stone Oak Area', 'homes', 1, 100);

INSERT INTO user_type(user_id, user_type)
VALUES (1, 'admin'),
       (2, 'admin'),
       (3, 'admin'),
       (4, 'admin'),
       (5, 'admin');