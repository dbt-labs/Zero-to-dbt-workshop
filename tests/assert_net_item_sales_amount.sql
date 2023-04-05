SELECT 
    order_key,
    net_item_sales_amount
FROM {{ ref('fct_orders')}}
HAVING not(net_item_sales_amount >=0)