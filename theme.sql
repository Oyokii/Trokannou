-- SQLite
CREATE TABLE IF NOT EXISTS Theme (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
Type_theme VARCHAR(150) NOT NULL
);

INSERT INTO Theme (Type_theme)
VALUES
('Bricolage'),
('Maison'),
('Sport'),
('Informatiques'),
;

