Feature: Verifying data with different markers in Karate Framework

  Scenario: Verifying data with marker
    Given url 'https://reqres.in/api/users/4'
    When method GET
    Then status 200
    And print response
    And match response.data.last_name == '#string'
    And match response.data.id == '#number'
    And match response.data.student == '#notpresent'
    And match response.data.first_name == '#present'
