-- Create table
create table RU_LOSSES_PERS
(
  date_rep     DATE,
  "DAY OF WAR" NUMBER,
  personnel    NUMBER,
  "PERSONNEL*" VARCHAR2(100),
  pow          NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table RU_LOSSES_PERS
  is 'The table for losses of personnel';
