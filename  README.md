# SQLC Learning Project

This project demonstrates the usage of SQLC with Go, focusing on different types of SQL JOIN operations. It includes examples of INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN queries.

## Project Structure

sqlc-learning/
├── db/ # Generated Go code by SQLC
├── queries.sql # SQL queries for SQLC
├── schema.sql # Database schema
├── main.go # Main application entry point
├── go.mod # Go module file
└── go.sum # Go module checksum file

## Setup

1. Install SQLC:

```bash
go install github.com/sqlc-dev/sqlc/cmd/sqlc@latest
```

```bash
go get github.com/lib/pq
```

## Database Schema

The project uses two tables:

prefectures - Stores prefecture information

prefecture_id (INTEGER, PRIMARY KEY)
prefecture_name (TEXT)
members - Stores member information

member_id (INTEGER, PRIMARY KEY)
name (TEXT)
prefecture_id (INTEGER, FOREIGN KEY)
Implemented Queries
The project includes examples of different JOIN operations:

GetMembersInnerJoin - Demonstrates INNER JOIN between members and prefectures
GetMembersLeftJoin - Demonstrates LEFT JOIN between members and prefectures
GetMembersRightJoin - Demonstrates RIGHT JOIN between members and prefectures
GetMembersFullJoin - Demonstrates FULL JOIN using UNION of LEFT and RIGHT JOINs

## Code Generation

To generate Go code from SQL queries:

```bash
sqlc generate
```

## Dependencies
Go 1.21 or later
SQLC
lib/pq (PostgreSQL driver)