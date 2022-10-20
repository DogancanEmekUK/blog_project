CREATE TABLE posts(
    id SERIAL PRIMARY KEY,
    title text,
    content text,
    comment_id int
);

INSERT INTO posts(title, content, comment_id) VALUES('New York', 'City planning in New York', 2);
INSERT INTO posts(title, content, comment_id) VALUES('London', 'Historical places in London', 1);
INSERT INTO posts(title, content, comment_id) VALUES('Izmir', 'Beaches and coves in Izmir', 3);
INSERT INTO posts(title, content, comment_id) VALUES('Tokyo', 'Population in Tokyo', 5);
INSERT INTO posts(title, content, comment_id) VALUES('Munich', 'Breweries in Munich', 4);