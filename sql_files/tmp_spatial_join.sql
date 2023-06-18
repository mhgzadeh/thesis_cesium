create or replace view house_number as 

select 

	building.gml_id as building_id,

	building.nutzung as building_usage,

	building.gebaeudefunktion as building_function,

	st_centroid(points.geom)::geometry(POINT, 25832) as geom,

	points.gml_id as point_id,

	points.art as point_type,

	points.schriftinhalt as house_number

from ap_pto as points

join ax_gebaeude as building

on st_intersects(building.geom, points.geom)

where points.art = 'HNR'	

	