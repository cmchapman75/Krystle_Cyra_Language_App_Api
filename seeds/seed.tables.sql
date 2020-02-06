BEGIN;

TRUNCATE
  "word",
  "language",
  "user";

INSERT INTO "user" ("id", "username", "name", "password")
VALUES
  (
    1,
    'admin',
    'Dunder Mifflin Admin',
    -- password = "pass"
    '$2a$10$fCWkaGbt7ZErxaxclioLteLUgg4Q3Rp09WW0s/wSLxDKYsaGYUpjG'
  );

INSERT INTO "language" ("id", "name", "user_id")
VALUES
  (1, 'Spanish', 1);

INSERT INTO "word" ("id", "language_id", "original", "translation", "next")
VALUES
  (1, 1, 'hola', 'hi', 2),
  (2, 1, 'gato', 'cat', 3),
  (3, 1, 'casa', 'house', 4),
  (4, 1, 'desarrollador', 'developer', 5),
  (5, 1, 'traducir', 'translate', 6),
  (6, 1, 'increible', 'amazing', 7),
  (7, 1, 'perro', 'dog', 8),
  (8, 1, 'Practir', 'to practice', null),
  -- (9, 1, 'denada', 'you are welcome', 10),
  -- (10, 1, 'perdon', 'excuse me', 11),
  -- (11, 1, 'por supuesto', 'of course', 12),
  -- (12, 1, 'no se', 'I do not know', 13),
  -- (13, 1, 'te quiero', 'I love you', 14),
  -- (14, 1, 'te extrano', 'I miss you', 15),
  -- (15, 1, 'buena suerte', 'good luck', 16),
  -- (16, 1, 'buen trabajo', 'good job', null);

UPDATE "language" SET head = 1 WHERE id = 1;

-- because we explicitly set the id fields
-- update the sequencer for future automatic id setting
SELECT setval('word_id_seq', (SELECT MAX(id) from "word"));
SELECT setval('language_id_seq', (SELECT MAX(id) from "language"));
SELECT setval('user_id_seq', (SELECT MAX(id) from "user"));

COMMIT;
y