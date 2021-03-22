Feature: user details

  Scenario: get user 4 details
    * def expectedOutput = read('../testData/user4.json')
    Given url 'https://reqres.in/api/users/4'
    When method GET
    Then status 200
    And print response
    And match response ==  expectedOutput