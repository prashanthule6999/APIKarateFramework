@ignore
Feature: Connect to database

  Background: 
    # use jdbc to validate
    * def config = { username: 'sql12343737', password: 'tZWFWH628v', url: 'jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12343737', driverClassName: 'com.mysql.cj.jdbc.Driver' }
    * def DbUtils = Java.type('com.api.features.DbUtils')
    * def db = new DbUtils(config)

  Scenario: Connect DB
    # calling query
    * def allEmployeesDetails = db.readRows('select * from office')
    Then print 'Employees Details---',allEmployeesDetails
    
    * def salary = db.readValue("select salary from office where employee = 'john'")
    Then print 'Employees Details---',salary
    
    * def write = db.insertRows('INSERT INTO office (id,employee,salary) values(7,"Prashant",100000)')