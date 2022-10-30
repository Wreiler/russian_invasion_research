-- put every losses type in the columns to the row by date
select date_rep,
       "DAY OF WAR",
       "GREATEST LOSSES DIRECTION",
       losses_type,
       count_losses - lag(count_losses) over (partition by losses_type order by date_rep) count_losses
from       
(
  select * from 
  (
    select eq.*, pers.personnel
    from RU_LOSSES_EQUIP eq,
         RU_LOSSES_PERS pers
    where eq.date_rep = pers.date_rep
  )
  UNPIVOT
  (
    count_losses
    for losses_type in ("AIRCRAFT", "HELICOPTER", "TANK", "APC", "FIELDARTILLERY", 
                        "MRL", "MILITARY AUTO", "FUEL TANK", "DRONE", "NAVAL SHIP", 
                        "ANTI-AIRCRAFT WARFARE", "SPECIAL EQUIPMENT", "MOBILE SRBM SYSTEM",
                        "VEHICLES AND FUEL TANKS", "CRUISE MISSILES", "PERSONNEL")
  )
)
order by date_rep
