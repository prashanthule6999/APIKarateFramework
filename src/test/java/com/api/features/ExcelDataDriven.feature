Feature: Data Driven Testing using excel file

  Background: 
    * url 'http://dummy.restapiexample.com/'

  Scenario Outline: Create user details using data driven test
    Given path 'api/v1/create'
    And request {"name":<name>,"salary":<salary>,"age":<age>}
    When method POST
    Then status 200
    And print response
    * def getUserID = response.data.id
    
    Given path 'api/v1/employee/'+ getUserID
    When method GET
    Then status 200
    And print response

    Examples: 
      | read('../testData/importData.csv') |
