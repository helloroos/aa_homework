CREATE TABLE plays (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL, 
    year INTEGER NOT NULL,
    playwright_id INTEGER NOT NULL,

    FOREIGN KEY (playwright_id) REFERENCES playwrights(id)
);

CREATE TABLE playwrights (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL, 
    birth_year INTEGER, 
);

INSERT INTO 
    playwrights (name, birth_year)
VALUES
    ('Arthur Miller', 1915),
    ('Michelle Miller', 1914),;

INSERT INTO
    plays (title, year, playwright_id)
VALUES
    ('All My Sons', 1945, (SELECT id FROM playwrights WHERE name = 'Arthur Miller')),
    ('All My Dreams', 1956 (SELECT id FROM playwrights WHERE name = 'Michelle Miller'));
