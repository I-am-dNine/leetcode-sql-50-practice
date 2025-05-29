Select
    m.employee_id,
    m.name,
    Count(e.employee_id) as reports_count,
    Round(AVG(e.age)) as average_age
From 
    Employees m join Employees e on m.employee_id = e.reports_to
Group by m.employee_id, m.name
Order by m.employee_id