select 
    count(firstname)
from 
    customers
where (state = 'OR' OR state = 'NY') and gender = 'F'