Select m.name
From Employee m 
    Join Employee e
    On e.managerId = m.id
Group By m.id, m.name
HAVING COUNT(*) >= 5
