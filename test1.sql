CREATE TABLE Product (
	Product_id VARCHAR2(20) CONSTRAINT idProduct PRIMARY KEY,
	Product_Name VARCHAR2(20) CONSTRAINT diffZero NOT NULL,
    Price NUMBER CONSTRAINT positive CHECK (Price>0)
);

CREATE TABLE Customer (
	Customer_id VARCHAR2(20) CONSTRAINT idProduct PRIMARY KEY,
	Product_Name VARCHAR2(20) CONSTRAINT DiffenetZero NOT NULL,
    Customert_Tell NUMBER 
);

CREATE TABLE Orders (
    Product_id VARCHAR2(20),
    Customer_id  VARCHAR2(20)
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT ck1 PRIMARY KEY (Product_id,Customer_id),
    CONSTRAINT FK1 FOREIGN KEY (Customer_id) REFERENCES Customer (Customer_id),
    CONSTRAINT FK2 FOREIGN KEY (Product_id) REFERENCES Product (Product_id)
);

ALTER TABLE Product ADD Category VARCHAR2(20),
ALTER TABLE Orders ADD Order_date DATE CONSTRAINT dateK1 default sysdate;
