IF OBJECT_ID ('Silver.crm_cst_info','U') IS NOT NULL
	DROP TABLE Silver.crm_cst_info;
CREATE TABLE Silver.crm_cst_info (
	cst_id INT,
	cst_key NVARCHAR(50),
	cst_firstname NVARCHAR(20),
	cst_lastname NVARCHAR(20),
	cst_material_status CHAR(1),
	cst_gendr CHAR(1),
	cst_create_date DATE,
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);

IF OBJECT_ID ('Silver.crm_prd_info','U') IS NOT NULL
	DROP TABLE Silver.crm_prd_info;
CREATE TABLE Silver.crm_prd_info (
	prd_id INT,
	prd_key NVARCHAR(50),
	cat_id  NVARCHAR(50),
	prd_number NVARCHAR(50),
	prd_cost INT,
	prd_line NVARCHAR(5),
	prd_start_date DATE,
	prd_end_date DATE,
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);
IF OBJECT_ID ('Silver.crm_sales_details','U') IS NOT NULL
	DROP TABLE Silver.crm_sales_details;
CREATE TABLE Silver.crm_sales_details (
	sls_ord_num NVARCHAR(50),
	sls_prd_key NVARCHAR(50),
	sls_cst_id INT,
	sls_order_dt INT,
	sls_ship_dt INT,
	sls_due_dt INT,
	sls_sales INT,
	sls_quantity INT,
	sls_price INT,
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);
IF OBJECT_ID ('Silver.erp_cust_az12','U') IS NOT NULL
	DROP TABLE Silver.erp_cust_az12;
CREATE TABLE Silver.erp_cust_az12 (
	CID NVARCHAR(50),
	BDATE DATE,
	GEN NVARCHAR(10),
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);

IF OBJECT_ID ('Silver.erp_loc_a101','U') IS NOT NULL
	DROP TABLE Silver.erp_loc_a101;
CREATE TABLE Silver.erp_loc_a101 (
	CID NVARCHAR(50),
	CNTRY NVARCHAR(50),
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);

IF OBJECT_ID ('Silver.erp_px_cat_g1v2','U') IS NOT NULL
	DROP TABLE Silver.erp_px_cat_g1v2;
CREATE TABLE Silver.erp_px_cat_g1v2 (
	ID NVARCHAR(50),
	CAT NVARCHAR(50),
	SUBCAT NVARCHAR(50),
	MAINTENANCE NVARCHAR(50),
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);




