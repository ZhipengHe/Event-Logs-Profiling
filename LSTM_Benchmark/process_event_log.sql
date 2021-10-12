DROP TABLE IF EXISTS BPIC_raw;

SELECT
case_id AS caseid,
activity,
timestamps AS end_timestamp,
COALESCE(resource, '[Empty]') AS resource
into temporary table BPIC_raw
FROM bpic12;

DROP TABLE IF EXISTS cases;

select a.caseid, min(a.end_timestamp) start_time
into temporary table cases
from BPIC_raw a
group by a.caseid;

drop table if exists traces;

select a.*, b.start_time, ROW_NUMBER() OVER (
      PARTITION BY a.caseid
      ORDER BY end_timestamp asc
   ) activity_index
into temporary table traces
from BPIC_raw a
join cases b on a.caseid = b.caseid;

drop table if exists milestones;

select distinct o.caseid, o.activity_index as milestone_index, o.activity as milestone, o2.activity as next_activity ,
ROW_NUMBER() OVER (
      PARTITION BY o.caseid
      ORDER BY o.activity_index
   ) milestone_id
into temporary table milestones
from traces o join
traces o2 on o.activity_index = o2.activity_index-1 and o.caseid = o2.caseid;

drop table if exists final_prefixes;
select cast(o.caseid as varchar)+'_'+cast(m.milestone_id as varchar) as prefix_id, o.caseid, o.activity,  'role_'+str(o.role) as role,   o.end_timestamp,o.start_time as trace_start, datediff(hour,o.start_time,o.end_timestamp) as timelapsed, m.next_activity, m.milestone, m.milestone_id, o.task_index
into temporary table final_prefixes
from traces o
join milestones m on o.caseid = m.caseid and o.activity_index <= m.milestone_index;

select milestone, count(distinct prefix_id) from final_prefixes
group by milestone;

select max(prefix_length) from ( 
	select f.prefix_id, max(f.activity_index) prefix_length from final_prefixes f group by f.prefix_id) a;
select f.*, a.prefix_length from final_prefixes f
join ( 
	select f.prefix_id, max(f.activity_index) prefix_length 
	from final_prefixes f 
	group by f.prefix_id
	) a on f.prefix_id = a.prefix_id
join (
	select caseid from 
		(select distinct caseid from final_prefixes) ca order by newid()
	) b on b.caseid = f.caseid;
