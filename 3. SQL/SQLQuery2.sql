-- Segment value

create view segment_value as
select loyalty_classification,fee_structure,
count(Client_ID)as clients,
avg(Estimated_Income)as avg_income,
sum(Bank_Deposits)as total_deposits from Clean_Banking_Clients
group by loyalty_classification,fee_structure;


-- Risk vs loan/credit

create view risk_vs_loan_and_credit as
select Risk_Weighting,count(Client_ID)as clients,
avg(bank_loans)as avg_loans,
avg(Credit_Card_Balance)as avg_cc_balance,
avg(Estimated_Income)as avg_income from Clean_Banking_Clients
group by risk_weighting;



-- Customer ranking 

create view customer_ranking as
SELECT client_id, name, banking_relationship, bank_deposits,
       RANK() OVER (PARTITION BY banking_relationship ORDER BY bank_deposits DESC) AS deposit_rank
FROM Clean_Banking_Clients;



