Select unique_id, name
From Employees left join EmployeeUNI on Employees.id = EmployeeUNI.id;