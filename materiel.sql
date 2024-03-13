-- SQLite
CREATE TABLE IF NOT EXISTS materiel (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
Type_theme VARCHAR(150) NOT NULL,
slug VARCHAR(50),
theme_id INTEGER
FOREIGN KEY (theme_id) REFERENCES Theme(id)
);

INSERT INTO materiel (Type_theme,slug,theme_id)
VALUES
('Outils''13','Tondeuse''99','Javel''5'),
('chaise''45','Table''59','Cuisine''1200'),
('Velos''150','Ballons''23','trotinette''145'),
('Appareils_photos''250','Jeux_videos''123','accessoires''12')
;

SELECT *
FROM materiel




DROP TABLE materiel

PRAGMA foreign_keys = ON;