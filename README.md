# Unit 7 Homework Assignment: Looking for Suspicious Transactions

![Credit card fraudster](https://thecreditpros.com/wp-content/uploads/2017/11/Credit-Card-Fraud.png)

*[Credit Card Fraudster by Richard Patterson](https://www.flickr.com/photos/136770128@N07/42252105582/) | [Creative Commons Licensed](https://creativecommons.org/licenses/by/2.0/)*

## Background

Fraud is prevalent these days, whether you are a small taco shop or a large international business. While there are emerging technologies that employ machine learning and artificial intelligence to detect fraud, many instances of fraud detection still require strong data analytics to find abnormal charges.


### **Data Modeling**

Create an entity relationship diagram (ERD) by inspecting the provided CSV files.

Part of the challenge here is to figure out how many tables you should create, as well as what kind of relationships you need to define among the tables.



Using your database model as a blueprint, create a database schema for each of your tables and relationships. Remember to specify data types, primary keys, foreign keys, and any other constraints you defined.

After creating the database schema, import the data from the corresponding CSV files.

### **Data Analysis**
#### Part 1:

The CFO of your firm has requested a report to help analyze potential fraudulent transactions.

* Some fraudsters hack a credit card by making several small transactions (generally less than $2.00), which are typically ignored by cardholders. 

  * How can you isolate (or group) the transactions of each cardholder?
      * Join all tables (see EDR)

  * Count the transactions that are less than $2.00 per cardholder.
      * There is 350 total transactions that are less than $2.000 
  
  * Is there any evidence to suggest that a credit card has been hacked? Explain your rationale.
      * Based on data_transaction table and some transactions taking palce in the middle of the night, would leafe me to beleive there is some fraduluent activity present.


#### Part 2:

Your CFO has also requested detailed trends data on specific card holders. Use the [starter notebook](Starter_Files/challenge.ipynb) to query your database and generate visualizations that supply the requested information as follows, then add your visualizations and observations to your markdown report:      

***See jupyternotebook file***