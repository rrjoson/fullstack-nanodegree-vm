Udacity FSND - Swiss Tournament Generator
===
This application was created as a part of Udacity's Full Stack Nanodegree program.
The objective was to learn how to create and use databases through the use of database schemas and how to manipulate the data inside the database by writing a Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament.

This project has two parts:

- Defining the database schema (SQL table definitions) in tournament.sql
- Writing code that will use it to track a Swiss tournament in tournament.py


### Setup ###
1. Clone this repo: `git clone https://github.com/rrjoson/fullstack-nanodegree-vm.git`
2. Navigate to the vagrant folder: `cd fullstack/vagrant/`
3. Setup the virtual machine by running `vagrant up`

### Usage ###
1. Log into the VM by running: `vagrant ssh`
2. Navigate to the tournament directory: `cd /vagrant/tournament`
3. Initialize the database by running: `psql -f tournament.sql`
4. To test the database against Udacity's criteria, run: `python tournament_test.py`

### Requirements ###
- Python 2.7
- PostgreSQL Database
- Virtual Machine (Linux i.e. Ubuntu) with Vagrant configuration already pre-installed.

### License ###

Licensed under the MIT License (MIT)


```
Copyright (c) [2016] [rrjoson]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```