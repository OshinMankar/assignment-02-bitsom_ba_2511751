# Healthcare Data Platform & AI Architecture

## Project Overview

This project explores the design of modern data platforms that support transactional systems, analytics, machine learning, and AI applications.

The project applies data architecture concepts across relational databases, NoSQL databases, data warehouses, vector databases, and data lakes. The final architecture design brings these concepts together to propose an AI-powered data platform for a hospital network.

The objective was to understand how different storage systems and data architectures can be selected based on data characteristics, analytical requirements, scalability, and AI use cases.

---

## Key Areas Explored

- Relational database design and normalization
- SQL and analytical queries
- NoSQL document modeling
- RDBMS vs NoSQL evaluation
- ETL and data transformation
- Data warehouse and star schema design
- Vector embeddings and semantic similarity
- Vector database use cases
- Cross-format data querying using DuckDB
- Data Lake and Lakehouse architecture
- AI-powered healthcare data architecture

---

# 1. Relational Database Design

A denormalized order dataset was analyzed to identify data redundancy and database anomalies.

### Key Work

- Identified insert, update, and delete anomalies
- Designed a normalized database schema up to Third Normal Form (3NF)
- Defined primary and foreign key relationships
- Developed SQL queries for customer, product, order, and sales analysis

### Key Learning

Normalization reduces data redundancy and improves consistency by separating entities such as customers, products, orders, and sales representatives into related tables.

---

# 2. NoSQL Database Design

A flexible product catalog was modeled using MongoDB-style documents.

The solution considered products with different attributes across categories such as:

- Electronics
- Clothing
- Groceries

### Key Work

- Designed category-specific JSON documents
- Used nested objects and arrays
- Created MongoDB queries for filtering and updating data
- Evaluated indexing requirements

### Database Evaluation

A relational database was recommended for healthcare patient management due to the importance of transactional consistency, while NoSQL was evaluated for scalable and flexible future workloads.

---

# 3. Data Warehouse & ETL Design

A retail transaction dataset was transformed into a structure suitable for business intelligence reporting.

### Key Work

- Designed a star schema
- Created fact and dimension tables
- Standardized inconsistent date formats
- Cleaned category values
- Created calculated revenue fields
- Developed analytical SQL queries

### Analytical Use Cases

- Revenue by product category
- Top-performing stores
- Month-over-month sales trends

---

# 4. Vector Embeddings & Semantic Search

A Python-based embedding experiment was developed to understand how vector representations capture semantic similarity.

### Key Work

- Generated text embeddings using Sentence Transformers
- Compared sentences using cosine similarity
- Created a similarity matrix
- Retrieved the most semantically similar sentences for a new query

### AI Use Case

The project also explored how vector databases can support natural-language search over large documents, enabling users to retrieve information based on meaning rather than exact keyword matches.

---

# 5. Data Lake & Cross-Format Analytics

Different data formats were queried directly using DuckDB.

The data included:

- CSV customer data
- JSON order data
- Parquet product data

### Key Work

- Performed cross-format SQL queries
- Joined data directly from raw files
- Analyzed customer orders and product purchases

### Architecture Evaluation

Data Warehouse, Data Lake, and Lakehouse architectures were compared for handling structured, semi-structured, and unstructured data.

A Lakehouse architecture was recommended for scalable analytics and future machine learning workloads.

---

# 6. Healthcare AI Data Platform Architecture

The final project focused on designing an AI-powered data platform for a hospital network.

The proposed system supports four major capabilities:

### Patient Readmission Prediction

Historical treatment data can be prepared for machine learning models to predict patient readmission risk.

### Natural-Language Patient History Search

Doctors can query patient history using natural language, supported by semantic search and vector embeddings.

### Management Reporting

Analytical data pipelines can support monthly reporting for metrics such as:

- Bed occupancy
- Department-level costs
- Operational performance

### Real-Time ICU Data

Streaming systems can collect and store real-time patient vitals from ICU monitoring devices.

---

## Architecture Considerations

The architecture separates:

### OLTP

Operational systems responsible for transactional healthcare data.

### OLAP

Analytical systems responsible for reporting, historical analysis, and aggregated data.

### AI Layer

Machine learning and semantic search systems built using appropriately prepared data.

The architecture also considers trade-offs between consistency, scalability, analytical performance, and system complexity.

---

## Technologies & Concepts

### Databases

- SQL
- Relational Databases
- MySQL
- MongoDB
- Vector Databases

### Data Engineering

- Database Normalization
- Data Modeling
- ETL
- Data Warehousing
- Star Schema
- Data Lakes
- Lakehouse Architecture
- DuckDB

### AI & Machine Learning

- Text Embeddings
- Semantic Similarity
- Vector Search
- Machine Learning Data Pipelines
- AI Data Architecture
