Select v.customer_id, COUNT(*) AS count_no_trans
From Visits v 
    Left Join Transactions t 
    On v.visit_id = t.visit_id
Where t.transaction_id Is Null
Group By v.customer_id;

