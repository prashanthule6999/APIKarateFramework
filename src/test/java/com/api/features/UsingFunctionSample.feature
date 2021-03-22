Feature: user details

  Scenario: get user 2 details
    * def expectedOutputUser2 = read('../testData/user2.json')
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    * def myFun = function(){ return 'Hello' }
    * def getReturnedData = call myFun
    And print 'Response from function---',getReturnedData
    * def myFunc =
      """
      	function(){ return 'MyData' }
      """
    * def getReturnedData1 = call myFunc
    And print 'Response from anothr funcation---',getReturnedData1
