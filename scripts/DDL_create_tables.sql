-- Creating ddl statements
-- in this we can see all DDL statements for crm and erp source


if OBJECT_ID('silver.crm_cust_info','U') is not null
	Drop TABLE silver.crm_cust_info;
CREATE TABLE silver.crm_cust_info (
	cst_id int,
	cst_key nvarchar(50),
	cst_firstname nvarchar(50),
	cst_lastname nvarchar(50),
	cst_marital_status nvarchar(50),
	cst_gndr nvarchar(50),
	cst_create_date nvarchar(50)
);

if OBJECT_ID('silver.crm_prd_info', 'U') is not null
	Drop TABLE silver.crm_prd_info;
CREATE TABLE silver.crm_prd_info (
	prd_id int,
	prd_key nvarchar(50),
	prd_nm nvarchar(50),
	prd_cost int,
	prd_line nvarchar(50),
	prd_start_dt nvarchar(50),
	prd_end_dt nvarchar(50)
);

if object_id('silver.crm_sales_details', 'U') is not null
	drop table silver.crm_sales_details;
CREATE TABLE silver.crm_sales_details(
	sls_ord_num nvarchar(50),
	sls_prd_key nvarchar(50),
	sls_cust_id int,
	sls_order_dt nvarchar(50),
	sls_ship_dt nvarchar(50),
	sls_due_dt nvarchar(50),
	sls_sales	int,
	sls_quantity int,
	sls_price int
);

if object_id('silver.erp_CUST_AZ12','U') is not null
	drop table silver.erp_CUST_AZ12;
CREATE TABLE silver.erp_CUST_AZ12(
	CID nvarchar(50),
	BDATE nvarchar(50),
	GEN nvarchar(50)
);


IF OBJECT_ID('silver.erp_loc_a101', 'U') IS NOT NULL
    DROP TABLE silver.erp_loc_a101;
CREATE TABLE silver.erp_loc_a101 (
    cid    NVARCHAR(50),
    cntry  NVARCHAR(50)
);

if object_id('silver.erp_PX_CAT_G1V2', 'U') is not null
	drop table silver.erp_PX_CAT_G1V2;
CREATE TABLE silver.erp_PX_CAT_G1V2(
	ID nvarchar(50),
	CAT nvarchar(50),
	SUBCAT nvarchar(50),
	MAINTENANCE nvarchar(50)
);
