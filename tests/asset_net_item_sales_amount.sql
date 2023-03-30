select 
order_key,
net_item_sales_amount
from {{ref('fct_orders')}}
having not(net_item_sales_amount >= 0)