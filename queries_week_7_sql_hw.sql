
DROP TABLE IF EXISTS card_holder;
DROP TABLE IF EXISTS credit_card;
DROP TABLE IF EXISTS data_merchant;
DROP TABLE IF EXISTS merchant_category;
DROP TABLE IF EXISTS data_transaction;

CREATE TABLE card_holder (
  id INT PRIMARY KEY,
  name VARCHAR(100)
);

CREATE TABLE credit_card (
  card varchar(100) PRIMARY KEY,
  cardholder_id int,
  FOREIGN KEY (cardholder_id) REFERENCES card_holder(id)
);

CREATE TABLE data_merchant (
  id int PRIMARY KEY,
  name varchar(100),
  id_merchant_category int,
  FOREIGN KEY (id_merchant_category) REFERENCES merchant_category(id)
);
--id_merchant_category int FK >- merchant_category.id

CREATE TABLE merchant_category (
  id int PRIMARY KEY,
  name varchar(100)
);

CREATE TABLE data_transaction (
  id int PRIMARY KEY,
  date timestamp,
  amount float,
  card varchar(100),
  id_merchant int,
  FOREIGN KEY (id_merchant) REFERENCES data_merchant(id),
  FOREIGN KEY (card) REFERENCES credit_card(card)
);

--card varchar(20) FK >- credit_card.card
--id_merchant int FK >- data_merchant.id

select * from card_holder;
select * from credit_card;
select * from data_merchant;
select * from merchant_category;
select * from data_transaction; 

 
create table combined_fraud
as (select data_transaction.date, data_transaction.amount from data_transaction 
join credit_card on credit_card.card = data_transaction.card
join card_holder on card_holder.id = credit_card.cardholder_id
join data_merchant on data_merchant.id = data_transaction.id_merchant
join merchant_category on merchant_category.id = data_merchant.id_merchant_category
);

select * from combined_fraud;


select count(*) from combined_fraud where amount < 2.00;


select customer_id, count(customer_id) from amount group by customer_id;


select * from combined_fraud where date between '2018-12-31 09:00:00' and '2018-12-31 09:00:00';











