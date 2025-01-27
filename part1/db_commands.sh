#!/bin/bash

psql -U postgres < students.sql

# pg_dump --username=freecodecamp --dbname=students > students.sql 
# # database must exist before importing it
# # equivalent to connecting the DB and `CREATE DATABASE students`
# psql --username=freecodecamp --dbname=postgres -c 'create database students;'
# # import the students databse from sql file
# psql -U freecodecamp -d students -L="students_db.log" -q -f students.sql 
# # connect to the DB
# psql -U freecodecamp -d students

git branch -b jsmith
git remote add upstream https://github.com/freeCodeCamp/learn-sql-by-building-a-student-database-part-1.git
git remote set-url origin https://github.com/jennylsmith/student_database.git
git branch -u origin/jsmith
# futz around with git pull / git merge... 
