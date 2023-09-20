DROP SCHEMA skandia;
CREATE SCHEMA skandia;
USE skandia;

# Create NATURAL PERSON

## Create document type

create table document_type(
   id integer primary key,
   d_type varchar(30) not null unique
);

insert into document_type (id, d_type)
values
  (1, 'NIT'),
  (2, 'Cédula de Ciudadanía'),
  (3, 'Tarjeta de Identidad'),
  (4, 'Pasaporte'),
  (5, 'Cédula de Extranjería');


## Create Natural person

CREATE TABLE natural_person (
document_id int not null PRIMARY KEY UNIQUE,
document_type int not null default 2,
foreign key (document_type) references document_type (id),
name varchar(255) not null,
surname varchar(255) not null,
birth date not null,
department varchar(255) not null,
municipality varchar(255) not null
);



# Create PERSON

## Create person roles

create table person_role(
   id integer primary key,
   role varchar(30) not null unique
);


## Create person types

create table person_type(
   id integer primary key,
   p_type varchar(30) not null unique
);
  

## Create person 

CREATE TABLE person (
id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
p_type int not null default 1,
foreign key (p_type) references person_type (id),
natural_person_id int UNIQUE, 
foreign key (natural_person_id) references natural_person (document_id),
legal_person_id int UNIQUE, 
role int not null default 1,
foreign key (role) references person_role (id)
);


# Create LEGAL PERSON

## Create company type

create table company_type(
   id integer primary key,
   c_type varchar(30) not null unique
);



## Create legal person

CREATE TABLE legal_person (
nit int not null PRIMARY KEY UNIQUE,
business_name varchar(255) not null,
document_type int not null default 1,
foreign key (document_type) references document_type (id),
company_type int not null default 1,
foreign key (company_type) references company_type (id),
legal_representative int not null,
foreign key (legal_representative) references person (id)
);

## Create Shared owner

CREATE TABLE shared_owners (
id_owner int not NULL,
foreign key (id_owner) references person (id),
id_legal_person int not NULL,
foreign key (id_legal_person) references legal_person (nit)
);

# Saving Account

## Create deposit type
create table deposit_type(
   id integer primary key,
   m_type varchar(30) not null unique
);

## Create Saving Account
CREATE TABLE saving_account (
account_id int NOT NULL PRIMARY KEY UNIQUE,
exchange_balance DOUBLE NOT NULL,
available_balance DOUBLE NOT NULL,
total_balance DOUBLE NOT NULL
);

CREATE TABLE saving_account_owners (
id_owner int not NULL,
foreign key (id_owner) references person (id),
id_saving_account int not NULL,
foreign key (id_saving_account) references saving_account (account_id)
);


## Create Deposit
CREATE TABLE deposit (
id int not null PRIMARY KEY UNIQUE AUTO_INCREMENT,
transaction_date date not null,
d_type int not null, 
Foreign Key (d_type) REFERENCES deposit_type(id),
amount double not null,
saving_account int not null,
Foreign Key (saving_account) REFERENCES saving_account(account_id)
);


# Create CREDIT CARD

## Franchise
create table franchise(
   id integer primary key,
   name varchar(30) not null unique
);


## Movement Type
create table movement_type(
   id integer primary key,
   name varchar(30) not null unique
);
  

## Create Credit Card
CREATE TABLE credit_card (
card_id int not null PRIMARY KEY UNIQUE AUTO_INCREMENT,
franchise int not null default 1, 
Foreign Key (franchise) REFERENCES franchise(id),
approved_limit double not null,
available_limit double not null,
status bool not null,
owner_id   int not null,
Foreign Key (owner_id) References person (id)
);

## Create Movement
CREATE TABLE movement (
id INT NOT NULL PRIMARY KEY UNIQUE AUTO_INCREMENT,
transaction_date DATE NOT NULL,
m_type INT NOT NULL DEFAULT 1,
FOREIGN KEY (m_type) REFERENCES movement_type (id),
amount DOUBLE NOT NULL DEFAULT 0,
credit_card_id INT NOT NULL,
FOREIGN KEY (credit_card_id) REFERENCES credit_card (card_id)
);

