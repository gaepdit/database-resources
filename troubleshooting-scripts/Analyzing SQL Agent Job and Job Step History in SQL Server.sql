USE msdb
GO

SELECT j.name         AS JobName,h.step_name AS StepName,
       CONVERT(char(10), CAST(STR(h.run_date, 8, 0) AS datetime), 111)
                      AS RunDate,
       STUFF(STUFF(RIGHT('000000' + CAST(h.run_time AS varchar(6)), 6), 5, 0, ':'), 3, 0, ':')
                      AS RunTime,
       h.run_duration AS StepDuration,
       case h.run_status
           when 0 then 'Failed'
           when 1 then 'Succeeded'
           when 2 then 'Retry'
           when 3 then 'Cancelled'
           when 4 then 'In Progress'
       end            as ExecutionStatus,
       h.message      AS MessageGenerated
FROM sysjobhistory h
     inner join sysjobs j
                ON j.job_id = h.job_id
where j.Name = 'AIRBRANCH_USP_IAIP_TO_STG'
order by h.run_date desc;
