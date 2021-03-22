 @ignore
Feature: API Authentication

  Background: 
    * url 'https://reqres.in/api/'

  Scenario: Autentication test
    * def params =
      """
      {
       		'email': '#email',
      		'password' : '#password'		
      }
      """
    When path "oauth2.0/token"
    And form field grant_Type = 'client_credentails'
    And form fields params
    When method POST
    Then status 200
    Then print 'response--',response
    * def accessToken = response.token
    And print accessToken
