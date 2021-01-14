## MySQL

#### Order By custom

Order sales based on their statuses, in the order below.

```SELECT 
    orderNumber, status
FROM
    orders
ORDER BY 
    FIELD(status, 'In Process', 'On Hold', 'Cancelled', 'Resolved', 'Disputed', 'Shipped');```
