create or replace view union_ground_surface as 
select st_union(geom) as ground_surface
from city_model_groundsurface
group by building_id