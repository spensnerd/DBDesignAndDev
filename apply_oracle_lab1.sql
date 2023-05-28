-- ------------------------------------------------------------------
--  Program Name:   apply_oracle_lab1.sql
--  Lab Assignment: N/A
--  Program Author: Michael McLaughlin
--  Creation Date:  17-Jan-2018
-- ------------------------------------------------------------------
--  Change Log:
-- ------------------------------------------------------------------
--  Change Date    Change Reason
-- -------------  ---------------------------------------------------
--  13-Aug-2019    Incorporate diagnostic scripts.
-- ------------------------------------------------------------------
--   This cleans up the database instance's user account and creates
--   tables, indexes, constraints, and sequences by calling programs
--   already writen; and demonstrates how to write a local log file
--   with a session-level bind variable. 
-- ------------------------------------------------------------------

-- ------------------------------------------------------------------
--   Cleanup prior installations and run previous lab scripts.
-- ------------------------------------------------------------------
@@/home/student/Data/cit225/oracle/lib1/utility/cleanup_oracle.sql
@@/home/student/Data/cit225/oracle/lib1/create/create_oracle_store2.sql

-- ------------------------------------------------------------------
--   Set SQL*Plus environmnet variables.
-- ------------------------------------------------------------------
SET ECHO ON
SET FEEDBACK ON
SET NULL '<Null>'
SET PAGESIZE 999
SET SERVEROUTPUT ON

-- ------------------------------------------------------------------
--   Open the log file for writing.
-- ------------------------------------------------------------------
SPOOL apply_oracle_lab1.txt

-- Declare a session-level bind variable.
VARIABLE bind_variable VARCHAR2(30)

-- Assign a value to the session-level bind variable.
BEGIN
  :bind_variable := 'Lab 1 is complete!';
END;
/

-- Query the value of the session-level bind variable.
COLUMN bvariable FORMAT A30 HEADING "Session-level Bind Variable" 
SELECT :bind_variable AS bvariable FROM dual;

-- ------------------------------------------------------------------
--   Close the log file for writing.
-- ------------------------------------------------------------------
SPOOL OFF
