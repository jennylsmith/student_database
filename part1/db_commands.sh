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


uname -p
wget https://github.com/cli/cli/releases/download/v2.65.0/gh_2.65.0_linux_amd64.tar.gz
export PATH=$PATH:/workspace/gh_2.65.0_linux_amd64/bin
gh auth login
gh repo fork --fork-name 'student_database' --remote
gh repo set-default jennylsmith/student_database

git branch -b part1
# if starting from a new VM if say you closed the web browser tab, etc. 
# then add the forked remote as origin
git remote add upstream https://github.com/freeCodeCamp/learn-sql-by-building-a-student-database-part-1.git
git remote set-url origin https://github.com/jennylsmith/student_database.git
# set the branch to track the remote branch
git branch -u origin part1
# futz around with git pull / git merge... 
