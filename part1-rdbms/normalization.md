## Anomaly Analysis - 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Insert Anomaly:

In the orders_flat table, new data cannot be inserted unless an order exists.
For example, if the company introduces a new product, we may want to store:
1. product_id
2. product_name
3. category
4. unit_price

However, the table also requires:
1. order_id
2. customer_id
3. sales_rep_id
4. order_date

Therefore, a product cannot be stored unless an order is created. This makes it impossible to insert product information independently.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### Update Anomaly:

Product information such as product_name, category, and unit_price is repeated in multiple rows whenever the same product appears in different orders.
For example, if a product with a specific product_id appears in many rows and its unit_price changes, every row must be updated.
If one row is not updated, inconsistent data will occur where the same product has different prices.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### Delete Anomaly:

If a row is deleted from the orders_flat table, important information may also be lost.

For example, if a product appears in only one order and that order is deleted, the following product information will also be removed:
1. product_id
2. product_name
3. category
4. unit_price

Even though the product still exists, its information will no longer be stored in the database.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### Example row fields:

product_id: P105  
product_name: Wireless Keyboard  
unit_price: 1500

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### Normalization Justification:

Keeping all the data in one table may seem simple at first, but it creates several problems when the dataset grows. In the given dataset, customer details, product information, sales representative data, and order records are all stored together. Because of this, the same information appears many times. For example, if a customer places multiple orders, their name, email, and city will be repeated in many rows. This increases redundancy and makes the data harder to maintain.
A single-table design can also lead to update problems. If a customer changes their email address or city, the update would need to be made in every row where that customer appears. If one row is missed, the database will contain incorrect information. Similar issues can occur when product prices or sales representative details change.
There are also insert and delete problems. A new product may not be added unless an order exists, and deleting an order might remove important information about a product or sales representative.
Normalization solves these issues by separating the data into multiple related tables such as customers, products, orders, and order items. This reduces repeated data, improves data consistency, and makes the database easier to manage and scale in the future.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
