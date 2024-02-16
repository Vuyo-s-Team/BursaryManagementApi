# BursaryManagementApi
We are tasked to create an api for our management application

# Bursary Management API Development Standards

# Introduction
This document outlines the coding standards and conventions to be followed by all developers contributing to the development of the Bursary management API. These standards ensures consistency, readability, and maintainability of the codebase.

# 1. Naming Conventions
**Class Naming Convention**: Use PascalCase for naming classes.
**Package Naming**: All packages must be in lowercase.
***Variable Naming Convention**: Follow camelCase for naming variables.
**Table Naming**: Table names must be in singular form.

# 2. Code Formatting
**Method Formatting**: Leave one blank line after each method.
**Table Formatting**: Leave one blank line after each table definition.

# 3. Database Schema Syntax
Use the following syntax for creating tables in the database:

sql
Copy code
CREATE TABLE [dbo].[TableName] (
    [TableID] [int] IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    [Name] [varchar](10) NOT NULL
);

GO