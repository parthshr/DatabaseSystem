CREATE EXTENSION postgis;

create table geometries(name varchar,description varchar, geom geometry);

insert into geometries values 
('Apartment','Home','POINT(-118.2869220517836 34.03245033835621)'),
('USC Village','Fountain','POINT(-118.28519451546177 34.02524841035429)'),
('Generation','Fountain','POINT(-118.28323882924452 34.02231337273449)'),
('Carolyn Craig Franklin','Fountain','POINT(-118.28338645977466 34.020456347371265)'),
('Patsy and Forrest Shumway','Fountain','POINT(-118.285111319317 34.02036360524337)'),
('Franklin Family','Fountain','POINT(-118.28399890121054 34.019040709405964)'),
('Bi Ran and Chuck Ng','Fountain','POINT(-118.29063035394284 34.02030443131197)'),
('Leavey','Library','POINT(-118.28315310867488 34.02147888104079)'),
('Doheny Jr.','Library','POINT(-118.28411560993817 34.020327807804414)'),
('Asa V call Law','Library','POINT(-118.28420119922986 34.0188396633581)'),
('Hoose library of Philosophy','Library','POINT(-118.28646351336684 34.01861553101082)'),
('Helen Topping Architecture','Library','POINT(-118.28778166429126 34.019477537359826)'),
('Seaver Science','Library','POINT(-118.28893427653901 34.01990278254969)');

SELECT ST_AsText(ST_ConvexHull(ST_Collect(geom))) from geometries;

SELECT g1.name, g2.name,ST_Distance(g1.geom,g2.geom) FROM geometries as g1, geometries as g2   
WHERE g1.name <> g2.name and g1.name = 'Apartment'
ORDER BY g1.name, ST_Distance(g1.geom,g2.geom)
LIMIT 1;


