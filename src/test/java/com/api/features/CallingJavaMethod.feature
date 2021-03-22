Feature: Calling java method

  Background: 
    * def Demo = Java.type('com.api.features.JavaMethods')

  Scenario: Calling Static Method from .java Class
    * def call1 = new Demo().methodWithoutArgument()
    * def call2 = new Demo().methodWithArgument("World")
    Then print call2
    And match call2 == 'Hello World'

  Scenario: Calling Non-Static Method from .java Class
    * def call3 = Demo.methodWoutArgument()
    * def call4 = Demo.methodWArgument("Prashant")
    Then print call4
    And match call4 == 'Hello Prashant'

  Scenario: Using WriteData.java clas and writeData() method will write data to data.txt file and it will refelect in target folder
    * def call5 = Java.type('com.api.features.WriteData')
    * def result = call5.writeData("This is Fifth Line")

  Scenario: Write response received in data.txt file
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    * def dataResponse = response.data
    * def getSpecificIdDetails =
      """
      	function(arg){
      			for(i=0;i<arg.length;i++){
      				if(arg[i].id == 9){
      					return arg[i].email
      					break
      				}
      			}
      	}
      """
    * def specificIdDetails = call getSpecificIdDetails dataResponse
    * def call6 = Java.type('com.api.features.WriteData')
    * def result = call6.writeData(specificIdDetails)
