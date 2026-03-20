## Storage Systems

In this design, different storage systems are used based on the type of data and requirement. A relational database like MySQL is used for storing patient records, treatment history, and billing data because it ensures strong consistency and reliability, which is very important in healthcare systems.
For real-time ICU data, a streaming system (Kafka) is used along with a data lake. This helps in handling large volumes of continuous data coming from monitoring devices and storing it for further analysis.
A data warehouse is used for generating monthly reports such as bed occupancy and department-wise costs. It allows fast querying and analysis on structured and cleaned data.
A vector database is used to support natural language queries from doctors. Patient records are converted into embeddings so that the system can understand the meaning of the query and return relevant results instead of just matching keywords.

## OLTP vs OLAP Boundary

The OLTP system includes the MySQL database, where day-to-day operations like patient registration, treatment updates, and billing are handled. This system is focused on fast and accurate transactions.
The OLAP system begins when data is moved from MySQL into the data warehouse through ETL processes. This layer is used for reporting and analysis, such as generating monthly reports. It is optimized for complex queries rather than real-time operations.

## Trade-offs

One major trade-off in this design is the complexity of managing multiple systems such as MySQL, data lake, data warehouse, and vector database. This can increase maintenance effort and require more resources.
To handle this, proper data pipelines and integration tools can be used to ensure smooth data flow between systems. Automation and monitoring can also help in managing the system efficiently and reducing manual effort.
