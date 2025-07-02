Select s.user_id, 
  ROUND(
    IFNULL(SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) * 1.0 / COUNT(c.action), 0),
    2
  ) AS confirmation_rate
From Signups s 
    Left Join Confirmations c
    On s.user_id = c.user_id
Group By s.user_id