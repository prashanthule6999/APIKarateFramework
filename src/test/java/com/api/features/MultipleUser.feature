Feature: user details

  Background: 
    * def expectedOutput = read('../testData/multipleUser.json')
    * def sleep =
      """
      function(seconds){
        for(i = 0; i <= seconds; i++)
        {
          java.lang.Thread.sleep(1*1000);
        }
      }
      """
    * url 'https://reqres.in/api/users/'

  @parallel=false
  Scenario: get user 2 details
    Given path 2
    When method GET
    Then status 200
    And print response
    And match response ==  expectedOutput[0]
    * call sleep 10

  @parallel=false
  Scenario: get user 3 details
    Given path 3
    When method GET
    Then status 200
    And print response
    And match response ==  expectedOutput[1]
    * call sleep 10