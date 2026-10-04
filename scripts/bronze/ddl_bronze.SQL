/*
===============================================================================
DDL script: Create Bronze tables
Script purpose
    This script creates tables in the bronze schema,dropping existing tables
    if they already exist.
    Run this script to re-define the DDL structure of 'bronze' tables
================================================================================
*/
If OBJECT_ID ('bronze.crm_cust_info','U') is not null
	Drop table bronze.crm_cust_info
Go
Create Table bronze.crm_cust_info(
cst_id int,
cst_Key NVarchar(50),
cst_firstname NVarchar(50),
cst_lastname  NVarchar(50),
cst_marital_status  NVarchar(50),
cst_gndr  NVarchar(50),
cst_create_date Date
);
Go
If OBJECT_ID ('bronze.crm_prd_info','U') is not null
	Drop table bronze.crm_prd_info
Go
Create TAble bronze.crm_prd_info(
prd_id int,
prd_key  NVarchar(50),
prd_nm  NVarchar(50),
prd_cost  int,
prd_line  NVarchar(50),
prd_start_dt Datetime,
prd_end_dt Datetime
);
Go
If OBJECT_ID ('bronze.crm_sales_details','U') is not null
	Drop table bronze.crm_sales_details
GO
Create Table bronze.crm_sales_details(
sls_ord_num NVarchar(50),
sls_prd_key  NVarchar(50),
sls_cust_id int,
sls_order_dt int,
sls_ship_dt int,
sls_due_dt int,
sls_sales int,
sls_quantity int,
sls_price int
);
Go
If OBJECT_ID ('bronze.erp_CUST_AZ12','U') is not null
	Drop table bronze.erp_CUST_AZ12
Go
create table bronze.erp_CUST_AZ12(
cid NVarchar(50),
Bdate Date,
Gen  NVarchar(50)
);
Go
If OBJECT_ID ('bronze.erp_LOC_A101','U') is not null
	Drop table bronze.erp_LOC_A101
Go
Create Table bronze.erp_LOC_A101(
Cid NVarchar(50),
Cntry  NVarchar(50)
);
Go
If OBJECT_ID ('bronze.erp_PX_CAT_G1V2','U') is not null
	Drop table bronze.erp_PX_CAT_G1V2
Go
Create Table bronze.erp_PX_CAT_G1V2(
Id NVarchar(50),
CAT  NVarchar(50),
Subcat  NVarchar(50),
Maintenance  NVarchar(50)
);
Go
