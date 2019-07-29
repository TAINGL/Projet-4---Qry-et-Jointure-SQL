  
  ALTER TABLE customers
  ADD CONSTRAINT fk_customers_employees
	FOREIGN KEY (salesRepEmployeeNumber)
	REFERENCES employees (employeeNumber)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
  
  
	ALTER TABLE employees
	ADD CONSTRAINT fk_employees_reportsTo
		FOREIGN KEY (reportsTo)
		REFERENCES employees (employeeNumber)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
    
    
    ALTER TABLE employees
	ADD CONSTRAINT fk_employees_officeCode
		FOREIGN KEY (officeCode)
		REFERENCES offices (officeCode)
		ON DELETE CASCADE
		ON UPDATE CASCADE;
        
	ALTER TABLE orderdetails
	ADD CONSTRAINT fk_orderdetails_orders
		FOREIGN KEY (orderNumber)
		REFERENCES orders (orderNumber)
		ON DELETE CASCADE
		ON UPDATE CASCADE;
   
   
   ALTER TABLE orderdetails
   ADD CONSTRAINT fk_orderdetails_products
		FOREIGN KEY (productCode)
		REFERENCES products (productCode)
		ON DELETE CASCADE
		ON UPDATE CASCADE;
        
	
	ALTER TABLE orders
	ADD CONSTRAINT fk_orders_customers
		FOREIGN KEY (customerNumber)
		REFERENCES customers (customerNumber)
		ON DELETE CASCADE
		ON UPDATE CASCADE;
        

	ALTER TABLE payments
	ADD CONSTRAINT fk_payments_customers
		FOREIGN KEY (customerNumber)
		REFERENCES customers (customerNumber)
		ON DELETE CASCADE
		ON UPDATE CASCADE;
        
        
	ALTER TABLE products
	ADD CONSTRAINT fk_products_productlines
		FOREIGN KEY (productLine)
		REFERENCES productlines (productLine)
		ON DELETE CASCADE
		ON UPDATE CASCADE;