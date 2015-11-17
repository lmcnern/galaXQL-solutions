BEGIN;
INSERT INTO hilight
SELECT stars.starid
FROM   stars,
       planets,
       (SELECT Max(orbitdistance) AS mo
        FROM   planets)
WHERE  planets.orbitdistance = mo
       AND planets.starid = stars.starid;
