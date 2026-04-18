DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE posts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    title TEXT
);

INSERT INTO users (name)
VALUES ('Ali'), ('Vali');

INSERT INTO posts (user_id, title)
VALUES (1,'A1'), (1,'A2'), (2,'B1');

SELECT users.name, COUNT(posts.id) AS total
FROM users
JOIN posts ON users.id = posts.user_id
GROUP BY users.id
ORDER BY total DESC
LIMIT 1;
