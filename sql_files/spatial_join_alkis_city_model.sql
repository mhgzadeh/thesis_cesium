create or replace view join_alkis_city_model as 

select 

	alkis_building.gml_id as gml_id,

	alkis_building.function as function,

	alkis_building.year as year,

	st_pointonsurface(city_model_groundsurface.geometry)::geometry(POINT, 25832) as geom,

	city_model_groundsurface.gml_id as my_gml

from alkis_building 

join city_model_groundsurface

on st_intersects(alkis_building.geometry, st_pointonsurface(city_model_groundsurface.geometry))
	