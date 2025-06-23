Select e.name, b.bonus
From Employee e 
    Left Join Bonus b 
    On e.empId = b.empId
Where b.bonus Is Null Or b.bonus < 1000