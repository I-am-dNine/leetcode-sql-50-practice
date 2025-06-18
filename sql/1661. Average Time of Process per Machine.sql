Select a1.machine_id, 
        ROUND(AVG(CASE 
            WHEN a1.activity_type = 'end'
            THEN a1.timestamp - a2.timestamp
        END),3) As processing_time
From Activity a1 
    Join Activity a2 
    On a1.machine_id = a2.machine_id 
    And a1.process_id = a2.process_id
Where a1.activity_type = 'end' And a2.activity_type = 'start'
Group By a1.machine_id
