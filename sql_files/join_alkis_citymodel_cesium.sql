create or replace view join_alkis_citymodel_cesium as
SELECT 
energy_citymodel.gml_id,
alkis_energy_demand."Qe_San_100" AS qe_san_100,
alkis_energy_demand."Qe_San_70" AS qe_san_70,
alkis_energy_demand."Qe_San_55" AS qe_san_55,
alkis_energy_demand."Qe_San_40" AS qe_san_40,
alkis_energy_demand."CO2_EH_100" AS co2_100,
alkis_energy_demand."CO2_EH_40" AS co2_40,
alkis_energy_demand."PV_Mod_Anz" AS pv
FROM energy_citymodel
JOIN helper.alkis_energy_demand ON energy_citymodel.gml_id::text = alkis_energy_demand.gml_id::text
WHERE alkis_energy_demand."Area" IS NOT NULL;