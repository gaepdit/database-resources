# EPD-IT Database Resources

This repository includes general information, guides, and tools for use by Georgia EPD-IT when working on database code.

## Repository setup

All database creation, setup, and data migration scripts should be stored in a Git repository and hosted in the GA-EPD-IT Bitbucket account.

## Code templates

Templates for stored procedures, functions, and triggers are stored in the "`/Templates`" folder. Use these templates when creating new objects. When working with existing database objects that weren't created with the template, consider converting it.

## SQL code style

To encourage and enforce a consistent code style for SQL objects, install [ApexSQL Refactor](https://www.apexsql.com/sql_tools_refactor.aspx) for SSMS and import the recommended format settings from the "`/Formatting`" folder. 

Before committing code changes, ensure you have properly formatted your SQL by using this tool. There is a menu item, or you can set up a keyboard shortcut.