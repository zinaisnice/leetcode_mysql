# Write your MySQL query statement below
select name from SalesPerson s
where not exists (
    select 1 from Orders o
    left join Company c
    on o.com_id = c.com_id
    where o.sales_id = s.sales_id
    and c.name = 'RED'
)

# 우주코딩
-- select s.name
-- from SalesPerson s
-- left join Orders o on s.sales_id = o.sales_id
-- left join Company c on c.com_id = o.com_id
-- where s.sales_id not in (select sales_id from Orders where com_id = 1)