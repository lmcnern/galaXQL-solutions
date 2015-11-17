CREATE TABLE alter_test
  (
     id   INTEGER PRIMARY KEY,
     data TEXT NOT NULL
  );

INSERT INTO alter_test
            (data)
VALUES      ('valueone');

INSERT INTO alter_test
            (data)
VALUES      ('valuetwo');

INSERT INTO alter_test
            (data)
VALUES      ('valuethree');

ALTER TABLE alter_test
  RENAME TO my_table;

ALTER TABLE my_table
  ADD COLUMN moredata TEXT;

INSERT INTO alter_test
            (data)
VALUES      ('valuefour');

SELECT *
FROM   my_table;

UPDATE my_table
SET    moredata = 'updated'
WHERE  id > 0
       AND id < 4;

SELECT *
FROM   my_table;
