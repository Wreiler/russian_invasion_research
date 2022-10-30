-- count of refugees by dates and countries
select t.country, 
       t.date_rec date_last_rec, 
       t.individuals refugees,
       max(t.centroid_lon) centroid_lon,
       max(t.centroid_lat) centroid_lat,
       max(t.lat_max) lat_max,
       max(t.lon_max) lon_max,
       max(t.lan_min) lan_min,
       max(t.lon_min) lon_min,
       min(decode(t.source_rec, '0', 'Unknown', t.source_rec)) source_rec
from UA_REFUGEES t
group by t.date_rec, t.country, t.individuals
