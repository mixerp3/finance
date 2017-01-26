IF OBJECT_ID('finance.financial_expense_selector_view') IS NOT NULL
DROP VIEW finance.financial_expense_selector_view;

GO


CREATE VIEW finance.financial_expense_selector_view
AS
SELECT 
    finance.account_scrud_view.account_id AS financial_expense_id,
    finance.account_scrud_view.account_name AS financial_expense_name
FROM finance.account_scrud_view
WHERE account_master_id IN(SELECT * FROM finance.get_account_master_ids(20700));

GO
