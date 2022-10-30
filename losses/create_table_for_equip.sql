-- Create table
create table ru_losses_equip
(
  date_rep                    date,
  "DAY OF WAR"                number,
  aircraft                    number,
  helicopter                  number,
  tank                        number,
  apc                         number,
  fieldartillery              number,
  mrl                         number,
  "MILITARY AUTO"             number,
  "FUEL TANK"                 number,
  drone                       number,
  "NAVAL SHIP"                number,
  "ANTI-AIRCRAFT WARFARE"     number,
  "SPECIAL EQUIPMENT"         number,
  "MOBILE SRBM SYSTEM"        number,
  "GREATEST LOSSES DIRECTION" varchar2(200),
  "VEHICLES AND FUEL TANKS"   number,
  "CRUISE MISSILES"           number
)
tablespace USERS
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table ru_losses_equip
  is 'The table for losses of equipment';
