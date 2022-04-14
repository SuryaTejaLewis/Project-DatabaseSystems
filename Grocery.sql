insert into GroceryStore(Store_Id,Store_Name,Contact_Number)values('St-760','Amazon',998765789);
insert into employee(Employee_Id,Employee_Name,Employee_Hire_Date,Grocerystore_Store_Id)values('548678','Smith','2021-08-06','St-766');
update employee set employee_name='James Cameron' where employee_id=548678;
update product set name='Rice' where product_id=7866;
delete from grocerystore where store_id='st-760';
select * from grocerystore;
select store_id,Store_name,phone_number,Customer_name from GroceryStore S Inner join Customer C on S.Store_Id=C.GroceryStore_Store_id;
select name,Payment_date,Cost from Product P,Payment PY where P.Product_id=PY.Product_Product_id;
select * from Customer C, Payment P where C.customer_Id=P.Customer_customer_id;