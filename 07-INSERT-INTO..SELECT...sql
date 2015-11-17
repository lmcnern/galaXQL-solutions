DELETE FROM hilight;

INSERT INTO hilight
SELECT starid
FROM   stars
WHERE  starid > 10000
       AND starid < 11000;
