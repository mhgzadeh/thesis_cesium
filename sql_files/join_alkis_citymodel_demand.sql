create
or replace view join_alkis_citymodel_demand as
select
	t1.geom as geometry,
	t1.gml_id as gml_id,
	t1."Geb_BAK" as building_class,
	t1."Geb_BJ" as construction_year,
	t1."Qe_Best" as alkis_demand,
	t2.demand as citymodel_demand,
	abs(
		(- t2.demand + t1."Qe_Best") /(t2.demand + 0.00001)
	) as accuracy_demand,
	t2.infiltration_rate as citymodel_infiltration_rate,
	t1."Geb_Geshoss_H_li" as alkis_average_storey_height,
	t2.average_storey_height as citymodel_average_storey_height,
	t1."Ve" as alkis_heated_volume,
	t2.heated_volume as citymodel_heated_volume,
	(
		(t2.heated_volume - t1."Ve") / (t2.heated_volume + 0.00001)
	) as accuracy_heated_volume,
	t1."An" as alkis_heated_area,
	t2.heated_area as citymodel_heated_area,
	(
		(t2.heated_area - t1."An") / (t2.heated_area + 0.00001)
	) as accuracy_heated_area,
	t2.surface_to_volume_ratio as citymodel_surface_to_volume_ratio,
	t1."A_Ges" as alkis_total_surface_area,
	t2.total_surface_area as citymodel_total_surface_area,
	t2.usage_hours_per_day as citymodel_usage_hours_per_day,
	t2.usage_days_per_year as citymodel_usage_days_per_year,
	t2.healthy_air_change_rate as citymodel_healthy_air_change_rate,
	t2.occupant_number as citymodel_occupant_number,
	t1."QW_Best" as alkis_dhw_demand,
	t2.dhw_demand as citymodel_dhw_demand,
	t2.average_intern_gains as citymodel_average_intern_gains,
	t2.heating_setback_temperature as citymodel_heating_setback_temperature,
	t2.heating_set_point_temperature as citymodel_heating_set_point_temperature
from
	helper.alkis_energy_demand t1
	join public.energy_citymodel t2 on t1.gml_id = t2.gml_id
order by
	accuracy_demand