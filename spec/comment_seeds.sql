CREATE TABLE comments(
    id SERIAL PRIMARY KEY,
    content text,
    commenter text
);

INSERT INTO comments(content, commenter) VALUES('London is the best', 'Benedict Cumberbatch');
INSERT INTO comments(content, commenter) VALUES('I want to see New york so much', 'Carmelo Anthony');
INSERT INTO comments(content, commenter) VALUES('The greatest place to have a summer!', 'Dogancan Emek');
INSERT INTO comments(content, commenter) VALUES('The best beers in the world!', 'Thomas Muller');
INSERT INTO comments(content, commenter) VALUES('History and modernity together...', 'Quentin Tarantino');