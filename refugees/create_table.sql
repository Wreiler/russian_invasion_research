-- Create table
create table UA_refugees
(
  num_id       number,
  id_rec       varchar2(250) not null,
  country      varchar2(200),
  date_rec     date,
  individuals  number,
  centroid_lon number,
  centroid_lat number,
  lat_max      number,
  lon_max      number,
  lan_min      number,
  lon_min      number,
  source_rec   varchar2(200)
)
tablespace USERS
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table UA_refugees
  is 'The table of UA refugees spreading after Russia''s invasion dataset';
-- Add comments to the columns 
comment on column UA_refugees.id_rec
  is 'Record id (country and date of record)';
comment on column UA_refugees.country
  is 'Country';
comment on column UA_refugees.date_rec
  is 'Date';
comment on column UA_refugees.individuals
  is 'Number of refugees in that country on that date';
comment on column UA_refugees.centroid_lon
  is 'Longitude of the center of the country region';
comment on column UA_refugees.centroid_lat
  is 'Latitude of the center of the country region';
comment on column UA_refugees.lat_max
  is 'Maximum latitude of the country region';
comment on column UA_refugees.lon_max
  is 'Maximum longitude of the country region';
comment on column UA_refugees.lan_min
  is 'Minimum latitude of the country region';
comment on column UA_refugees.lon_min
  is 'Minimum longitude of the country region';
comment on column UA_refugees.source_rec
  is 'Source of the data';
