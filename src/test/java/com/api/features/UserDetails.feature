Feature: user details

  Scenario: get user 2 details
    * def expectedOutputUser2 = read('../testData/user2.json')
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    And print response
    And match response ==  expectedOutputUser2
    And match response.data.id == 2
    And match response.data.last_name != null
    * def job_code = response.data.job_code
    And match job_code == null

  Scenario: get user 3 details
    * def expectedOutputUser3 = read('../testData/user3.json')
    Given url 'https://reqres.in/api/users/3'
    When method GET
    Then status 200
    And print response
    And match response ==  expectedOutputUser3
    And match response.data.id == 3
    And match response.data.last_name != null
    * def job_code = response.data.job_code
    And match job_code == null
