Feature: user details

  Scenario: get user details
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    * def dataResponse = response.data
    * def getSpecificIdDetails =
      """
      	function(arg){
      			for(i=0;i<arg.length;i++){
      				if(arg[i].id == 9){
      					return arg[i]
      					break
      				}
      			}
      	}
      """
    * def specificIdDetails = call getSpecificIdDetails dataResponse
    And print 'Specific User ID Details ---',specificIdDetails
    * def getSingleIdDetails =
      """
      	function(arg){
      		return arg[2].id
      }
      """
    * def singleIdDetails = call getSingleIdDetails dataResponse
    And print 'Single User ID Details---',singleIdDetails
    * def getUserDetailsLength =
      """
      	function(arg){
      		return arg.length
      }
      """
    * def userDetailsLength = call getUserDetailsLength dataResponse
    And print 'Total User Details Length---',userDetailsLength