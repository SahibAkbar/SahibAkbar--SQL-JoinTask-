USE salesman


--Task3-(Join3png)

--SELECT * FROM customer
--SELECT * FROM salesmanTables
--SELECT cs.cust_name,cs.city,sa.[name] as  'Salesman_name',sa.commission FROM customer cs
--INNER JOIN salesmanTables sa
--on cs.salesman_id = sa.salesman_id;


--Task4-(Join4png)

--SELECT cs.cust_name,cs.city,sa.[name] as  'Salesman_name' ,sa.commission FROM customer cs
--INNER JOIN salesmanTables sa
--on cs.salesman_id = sa.salesman_id
--WHERE sa.commission > 0.12;



--Task5-(Join5png)

--SELECT cs.cust_name,cs.city as 'cust_city', sa.[name] as 'Salesman_name' , sa.city as 'Salesman_City' ,sa.commission FROM customer cs
--INNER JOIN salesmanTables sa
--on cs.salesman_id = sa.salesman_id
--WHERE not cs.city = sa.city and sa.commission > 0.12



--Task6-(Join6png)

--CREATE TABLE orders(
--	ord_no int PRIMARY KEY IDENTITY (70001,1),
--	purch_amt decimal(6,2),
--	ord_date date,
--	customer_id int FOREIGN KEY REFERENCES customer(customer_id),
--	salesman_id int FOREIGN KEY REFERENCES salesmanTables(salesman_id)
--)
--SELECT * FROM orders
--INSERT INTO orders('purch_amt','ord_date','customer_id','salesman_id')
--VALUES(150.5,'10/05/2012',3002,5001),
--	  (270.65,'9/10/2012',3003,5001),
--      (65.26,'10/05/2012',3004,5002),
--      (110.5,'8/17/2012',3005,5005),
--      (948.5,'9/10/2012',3006,5003),
--      (2400.6,'7/27/2012',3007,5001),
--      (5760,'9/10/2012',3008,5001),
--      (1983.43,'10/10/2012',3009,5002),
--      (2480.4,'10/10/2012',3004,5006),
--      (250.45,'6/27/2012',3003,5002),
--      (75.29,'8/17/2012',3006,5005),
--      (3045.6,'4/25/2012',3002,5002)

--SELECT * FROM orders

--SELECT DISTINCT ord.customer_id,ord.salesman_id from orders ord
--INNER JOIN customer cs on ord.customer_id = cs.customer_id
--INNER JOIN salesmanTables sa on ord.salesman_id = sa.salesman_id
--order by ord.customer_id,ord.salesman_id

