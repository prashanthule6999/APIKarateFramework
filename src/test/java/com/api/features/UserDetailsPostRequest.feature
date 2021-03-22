Feature: Post Call test

  Background: 
    * def getJsonData = read('../testData/userDetailsPost.json')

  Scenario: Create user details
    Given url 'https://reqres.in/api/users'
    And request getJsonData
    And headers {Content-Type: 'application/json',Accept: 'application/json'}
    And param delay = 3
    When method POST
    Then status 201
    Then print 'response----',response