-- # Analyzing failed SQL Server agent jobs

-- Run this query to retrieve information on failed jobs.

select j.name                                                                                  as JobName,
       h.step_name                                                                             as StepName,
       CONCAT_WS(' ', CONVERT(char(10), CAST(STR(h.run_date, 8, 0) AS datetime), 111),
                 STUFF(STUFF(RIGHT('000000' +
                                   CAST(h.run_time AS varchar(6)), 6), 5, 0, ':'), 3, 0, ':')) as RunDateTime,
       h.run_duration                                                                          as StepDuration,
       case h.run_status
           when 0 then 'Failed'
           when 1 then 'Succeeded'
           when 2 then 'Retry'
           when 3 then 'Cancelled'
           when 4 then 'In Progress'
       end                                                                                     as ExecutionStatus,
       h.message                                                                               as MessageGenerated
from msdb.dbo.sysjobhistory h
    inner join msdb.dbo.sysjobs j
    on j.job_id = h.job_id
where h.run_status = 0
order by h.run_date desc, h.run_time desc;

-- List SQL Server jobs and schedules

select j.name          as [Job name],
       t.step_id       as [Step ID],
       j.description   as [Description],
       t.command       as [Command],
       t.database_name as [Database name],
       case
           when h.freq_type = 1 then 'One time only'
           when h.freq_type = 4 then 'Daily'
           when h.freq_type = 8 then 'Weekly'
           when h.freq_type = 16 then 'Monthly'
           else 'Other'
       end             as [Frequency type],
       h.freq_interval as [Interval],
       dateadd(second,
               (v.last_run_time / 10000 * 3600) +
               (((v.last_run_time % 10000 - v.last_run_time % 100) / 100) * 60) +
               (v.last_run_time % 100),
               convert(datetime, cast(nullif(v.last_run_date, 0) as nvarchar(10))))
                       as [Last run datetime],
       dateadd(second,
               (s.next_run_time / 10000 * 3600) +
               (((s.next_run_time % 10000 - s.next_run_time % 100) / 100) * 60) +
               (s.next_run_time % 100),
               convert(datetime, cast(nullif(s.next_run_date, 0) as nvarchar(10))))
                       as [Next run datetime]
from msdb.dbo.sysjobs j
    inner join msdb.dbo.sysjobschedules s
    on j.job_id = s.job_id
    left join msdb.dbo.sysjobsteps t
    on j.job_id = t.job_id
    left join msdb.dbo.sysschedules h
    on s.schedule_id = h.schedule_id
    left join msdb.dbo.sysjobservers v
    on j.job_id = v.job_id
where j.enabled = 1
order by 1, 2;
