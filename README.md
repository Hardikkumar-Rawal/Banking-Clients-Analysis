# Banking Clients Data Analytics

## 1\. Project Overview

This project analyzes 2,940 banking clients across 27 columns to understand client demographics, customer value, deposits, lending exposure, risk, and banking relationships. It follows an end-to-end analytics workflow using Excel, SQL Server, and Power BI.



## 2\. Business Questions

1. Customer Profile – What does the client base look like by age, gender and nationality?
2. Segment Value – Which loyalty classification and fee structure segments hold the most deposits?
3. Risk Analysis – How does risk weighting relate to loan amounts and credit card balances?
4. Relationship Type Performance – Which banking relationship drives the most deposits, loans and business lending?
5. Advisor \& Net Worth View – Who are the top clients by total banking value, and how does that break down by investment advisor?



## 3\. Tools Used

* #### Microsoft Excel :

  Data review, Preparation, Pivot-table analysis

* #### SQL Server(SSMS) :

  Business queries, Aggregation, Ranking, and Views

* #### Power BI :

  KPI cards, Interactive Visuals, and Slicers

## 4\. Project Questions and Solutions

The project contains **five main business questions** , solved across **three tools**.

**Question 1 — Excel**

#### What does the client base look like by age, gender, and nationality?

* Excel was used to explore client demographics and summarize the dataset using pivot-style tables.
* Key findings from workbook:

  **2,940** clients in the cleaned dataset.
**1,474 female** and **1,466 male** clients.

  The two largest nationality groups are **European (1,282)** and **Asian (737)**.

  Age-band counts: **under 30**: 551, **30–49**: 868, and **50+**: 1,521.

**Question 2 — SQL**

#### Which loyalty-classification and fee-structure segments hold the most deposits?

* The `segment_value` SQL view groups clients by `Loyalty_Classification` and `Fee_Structure`, then calculates client count, average estimated income, and total bank deposits.
* Reported finding:
**Jade + High** Fee is the strongest segment, with **657 clients**, approximately **$47.77** crore in deposits, and **$50.44** crore in net worth.
<img width="1044" height="583" alt="1  Loyalty and Fee Structure" src="https://github.com/user-attachments/assets/1bf47dd5-a74a-4ec3-96e6-3a1a226e1d97" />

**Question 3 — SQL**

#### How does risk weighting relate to loans and credit-card balances?

* The `risk_vs_loan_and_credit` view groups clients by `Risk_Weighting` and calculates client count, average bank loans, average credit-card balance, and average estimated income.
* Reported finding:

  Average loans and credit-card balances increase as risk weighting rises from 1 to 5.

  Risk Weighting 5 has the highest average loan (about $9.68 lakh) and average credit-card balance (about $5,259).

  The SQL file also creates a `customer_ranking` view, using `RANK()` to rank clients by bank deposits within each banking relationship.

**Question 4 — Power BI**

#### Which banking relationship drives the most deposits, loans, and business lending?

* The Power BI report compares banking relationship categories using client counts, deposits, loans, and business lending.
* Reported finding:

  **Private Bank** is the leading relationship type, with **1,323 clients**, approximately **$90.90** crore in deposits, and the highest reported total business lending and loans.

**Question 5 — Power BI**

#### Who are the top customers by net worth and top investment advisors?

* Power BI is used to highlight high-value customers using ranking or Top N filtering.
* Reported findings:

  The top 10 customers' net worth ranges from $8.60 million to $5.08 million.

  Their combined net worth is reported as $58.04 million, around 2.85% of total net worth of $2,032.5 million.

  **Damiel Gomez** is reported as the top customer, with net worth of $8.60 million.

  Top 10 investment advisors are managing worth around $1245.22M .

  **Peter Castillo** is on the top with $137.83M.

## 5\. Skills Demonstrated

* MS Excel :

  Data cleaning and preparation

  Pivot-table analysis and summarizing data across demographics

  Creating derived fields, such as age bands

* SQL Server (SSMS):

  Writing aggregation queries with GROUP BY, COUNT, AVG, and SUM

  Creating reusable SQL views (segment_value, risk_vs_loan_and_credit, customer_ranking)

  Using window functions, specifically RANK() with partitioning to rank clients within each banking relationship

  Translating business questions into queries



* Power BI:

  Building KPI cards for clients, deposits, loans, and credit-card balances

  Designing interactive dashboards with slicers (nationality, gender, fee structure, loyalty, age, relationship)

  Using Top N filtering to identify high-value customers

  Comparing categories such as banking relationship, advisor, and risk weighting

## 6\. Conclusion

This project demonstrates an end-to-end data analytics workflow: Excel-based demographic analysis, SQL-based segment and risk analysis, and Power BI-based relationship and high-value-customer reporting.

#### Domain:

Banking and Finance

#### Author:

Hardikkumar Rawal
