Feature: get user 4 response in user 5 request

  Scenario: get user 4 details in user 5
    * def expectedOutput = read('../testData/user5.json')
    * def feature = read('../features/User4.feature')
    * def result = call feature
    Given url 'https://reqres.in/api/users/5'
    When method GET
    Then status 200
    And print response
    And match response ==  expectedOutput
    And print 'result---',result
    * def first_name_4 = result.response.data.first_name
    And print 'User 4 first_name--',first_name_4
    * def first_name_5 = response.data.first_name
    And print 'User 5 first_name--',first_name_5
