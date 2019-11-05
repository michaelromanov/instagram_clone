CREATE DATABASE ig_clone;
USE ig_clone;

CREATE TABLE users (
  id INTEGER AUTO_INCREMENT PRIMARY KEY, 
  username VARCHAR(255) UNIQUE NOT NULL, 
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photos(
  id INT AUTO_INCREMENT PRIMARY KEY, 
  image_url VARCHAR(255) NOT NULL, 
  user_id INT NOT NULL, 
  created_at TIMESTAMP DEFAULT NOW(), 
  FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE comments(
  comment_text VARCHAR(255), 
  user_id INT NOT NULL,
  photo_id INT NOT NULL
);
CREATE TABLE likes(
  user_id INT NOT NULL,
  photo_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW(), 
  FOREIGN KEY(user_id) REFERENCES users(id), 
  FOREIGN KEY(photo_id) REFERENCES photos(id),
  PRIMARY KEY(user_id, photo_id)
);

INSERT INTO users (username) VALUES ('BlueTheCat'), ('CharlieBrown'), ('ColtSteel');
INSERT INTO photos (image_url, user_id) VALUES ('/alskjd76', 1), ('/lkajs98', 2), ('/90asds', 2);
INSERT INTO comments (comment_text, user_id, photo_id) VALUES ('Meow', 1, 2), ('Amazing Shot!', 3, 2), ('I <3 This', 2, 1);
INSERT INTO likes(user_id, )




-- SELECT photos.image_url, users.username FROM photos JOIN users ON photos.user_id = users.id;




