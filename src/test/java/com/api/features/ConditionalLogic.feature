Feature: Conditional Logic

  Scenario: Test1
    * def fileName = 'abc' == 'abc' ? 'User4.feature' : 'UserDetails.feature'
    Then print fileName
    * def result = call read(fileName)

  Scenario: Test2
    * def responseCode = 404
    * def result1 = responseCode == 200 ? karate.call('User4.feature') : karate.call('UserDetails.feature')

  Scenario: Test3
    * def responseCode = 404
    * if (responseCode == 200) karate.call('User4.feature')

  Scenario: Test4
    * def responseCode = 404
    * def myFunc =
      """
       function(){
       	return 'Hello'
       }
      """
    * if (responseCode == 200) myFunc()
    * def result = responseCode == 200 ? myFunc() : {}
    Then print result