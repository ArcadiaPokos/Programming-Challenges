--https://codefights.com/challenge/o6fR4PihLJMpgqy8d: CheckExpenditures(MySql):

CREATE PROCEDURE checkExpenditure()
BEGIN
    SELECT id,IF(value - SUM(expenditure_sum) > 0,
                 0, 
                 -(value - SUM(expenditure_sum))) loss
    FROM expenditure_plan, allowable_expenditure
    WHERE WEEK(monday_date) BETWEEN left_bound AND right_bound
    GROUP BY id;
END
