--drop forieng key

if exists (select* from sys.foreign_keys where name ='fk_fact_sales_dim_product' and
parent_object_id =object_id('fact_sales'))
alter table fact_sales
drop constraint fk_fact_sales_dim_product

--drop table dim product 

if exists ( select * from sys.objects where name = 'dim_product')
drop table dim_product
go

-- creating table 
create table dim_product (

product_key int  not null identity (1,1) ,
product_id int  not null ,
product_name nvarchar(50),
product_description nvarchar(400),
product_subcategory nvarchar(50),
product_category nvarchar(50),
color nvarchar(50),
model_name nvarchar(50),
reorder_point smallint,
standard_cost money,
source_system_code tinyint ,

start_date datetime not null default (getdate()),
end_date datetime ,
is_current tinyint not null default(1),


constraint pk_dim_product primary key clustered (product_key)
) ;

SET IDENTITY_INSERT dim_product ON

INSERT INTO dim_product
            (product_key,product_id,product_name,
             product_description,product_subcategory,product_category,color,model_name ,reorder_point,
             standard_cost,source_system_code,start_date,end_date,is_current)
VALUES      (0,0,'Unknown','Unknown','Unknown','Unknown','Unknown','Unknown',0,0,0,'1900-01-01', NULL,1)
SET IDENTITY_INSERT dim_product OFF 

-- crate frogin key 
IF EXISTS (SELECT *
           FROM   sys.tables
           WHERE  NAME = 'fact_sales')
  ALTER TABLE fact_sales
    ADD CONSTRAINT fk_fact_sales_dim_product FOREIGN KEY (product_key)
    REFERENCES
    dim_product(product_key);

-- create indexes
--check if exists 
IF EXISTS (SELECT *
           FROM   sys.indexes
           WHERE  NAME = 'dim_product_product_id'
                  AND object_id = Object_id('dim_product'))
  DROP INDEX dim_product.dim_product_product_id;

CREATE INDEX dim_product_product_id
  ON dim_product(product_id);

IF EXISTS (SELECT *
           FROM   sys.indexes
           WHERE  NAME = 'dim_prodct_product_category'
                  AND object_id = Object_id('dim_product'))
  DROP INDEX dim_product.dim_prodct_product_category

CREATE INDEX dim_prodct_product_category
  ON dim_product(product_category); 