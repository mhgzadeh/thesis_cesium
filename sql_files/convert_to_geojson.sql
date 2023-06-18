SELECT ST_AsGeoJSON(ST_Transform(geometry,4326)) from public.city_model_building;

SELECT json_build_object(
    'type', 'FeatureCollection',
    'features', json_agg(ST_AsGeoJSON(ST_Transform(geometry,4326))::json)
    )
FROM public.city_model_building;