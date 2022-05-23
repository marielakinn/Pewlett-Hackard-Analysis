# Pewlett Hackard Analysis

## Project Overview

Pewlett Hackard is a large company that is expecting a large number of baby boomers to retire in the upcoming years.

Pewlett Hackard wants an estimate on how many employees could be retiring soon because they want to offer retiring packages, and because they need to know which positions they will need to replace in the near future.

### Purpose

The purpose of this analysis is to help Bob, the HR analyst, determine the number of retiring employees and their position titles, and identify employees who are eligible to participate in a mentorship program.

## Results

By using SQL in PGAdmin, we could determine the following:

1. At first, the total number of employees eligible to retire exceeded 133,000 employees. Hoever, that number included some duplicates, which we removed using the `Distinct On` function in SQL. Click here for the full list.
2. When duplicates were removed, we identified 72,458 employees borned between 1952 and 1955 that could potentially retire soon. Click here for the complete list. 
3. Out of those 72,458 employees, 25,916 (36%) currenlty work as Senior Engineers; 24,926 (34%) work as Senior Staff; 9,285 (13%) are Engineers; 7,636 (11%) are Staff; 3,603 (5%) are Technique Leaders; 1,090 (2%) are Assistant Engineers, and 2 (0%) are Managers.

The table can be found by clicking here.

4. When loooking at the Mentorship Eligibility list, we identified 1,549 employees. The complete list can be found here.


## Summary

Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
