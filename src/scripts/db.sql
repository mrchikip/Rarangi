CREATE DATABASE IF NOT EXISTS buscaefz5hnbxjjhmj9b;

USE buscaefz5hnbxjjhmj9b;

CREATE TABLE IF NOT EXISTS tasks(
    id INT NOT NULL AUTO_INCREMENT,
    tittle VARCHAR (100) NOT NULL,
    description TEXT,
    PRIMARY KEY(id)
);

INSERT INTO tasks (tittle, description) VALUES
    ('Task 1', 'Some Description'),
    ('Task 2', 'Some Description 2');