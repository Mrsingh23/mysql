create database chase_bank;

insert into tbl_customer(full_name, mobile_number, email, address, google_plus_code, dob, gov_id_type, goc_id_num)
values ('shiab', 323233, 'shisab123@gmail.com', 'USA', '2321',SYSDATE(), 'passport', 2992);

insert into tbl_customer(full_name, mobile_number, email, address, google_plus_code, dob, gov_id_type, goc_id_num)
values ('sawa', 232312, 'sawa@gmail.com', 'Nepal', '2222',SYSDATE(), 'Driver_License', 3232);


insert into tbl_customer(full_name, mobile_number, email, address, google_plus_code, dob, gov_id_type, goc_id_num)
values ('Dharmendar', 74321, 'bmw@gmail.com', 'Germam', '9383',SYSDATE(), 'StateID', 434232);

#Inner join
    select * from tbl_customer INNER JOIN tbl_account_details tad on tbl_customer.id = tad.tbl_customer_id;

# left join = data that is left table and also common between both table
select * from tbl_customer LEFT JOIN tbl_account_details tad ON tbl_customer.id = tad.tbl_customer_id;

select * from tbl_customer;

select * from tbl_account_details;

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

select *from tbl_account_details;

insert into tbl_account_details (account_number, account_closed_date, account_open_dae, primary_balanced,
                                 interest_accured, total_balance, account_type, tbl_customer_id)
values ('122332', SYSDATE(), SYSDATE(), 32000, 5, 40000, 'SAVING',1);

insert into tbl_account_details (account_number, account_closed_date, account_open_dae, primary_balanced,
                                 interest_accured, total_balance, account_type, tbl_customer_id)
values ('98839', SYSDATE(), SYSDATE(), 20000, 2, 66000, 'CHECKING',2);

#query to rename column name
alter table tbl_account_details
    change column intererst_accured interest_accured DOUBLE;

describe tbl_account_details;

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