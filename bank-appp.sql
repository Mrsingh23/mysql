create database chase_bank;

CREATE TABLE tbl_customer(
                             id int primary key not null auto_increment,
                             full_name VARCHAR(20) not null,
                             mobile_number int unique,
                             email VARCHAR(100),
                             address VARCHAR(100),
                             google_plus_code VARCHAR(30),
                             is_premium BOOLEAN DEFAULT FALSE,
                             dob DATE,
                             gov_id_type VARCHAR(50) NOT NULL,
                             goc_id_num VARCHAR(100) not null
);

CREATE TABLE tbl_account_details(
                                    id int auto_increment primary key,
                                    account_number VARCHAR(23),
                                    account_closed_date DATE,
                                    account_open_dae DATE,
                                    primary_balanced DOUBLE,
                                    intererst_accured DOUBLE,
                                    total_balance DOUBLE,
                                    account_type VARCHAR(50),
                                    tbl_customer_id int not null ,
                                    foreign key (tbl_customer_id) references tbl_customer(id)
);

CREATE TABLE tbl_master_transaction_type(
                                            id int auto_increment primary key,
                                            name VARCHAR(29),
                                            transcation_code VARCHAR(20)
);

CREATE TABLE tbl_account_transactions(
                                         id int auto_increment primary key,
                                         tbl_account_details_id int,
                                         foreign key (tbl_account_details_id) references tbl_account_details(id),
                                         tbl_master_transaction_type_id int,
                                         foreign key (tbl_master_transaction_type_id) references tbl_master_transaction_type(id),
                                         amount double,
                                         is_cashback_applicable BOOLEAN,
                                         status VARCHAR(20)
);

describe tbl_account_details;

select current_date();