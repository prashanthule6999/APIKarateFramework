@ignore
Feature: Call to Token Generation Feature

  Background: 
    * def myFeature = call read('UserDetailAuthenticationPart1.json'){email : 'eve.holt@reqres.in', password : 'cityslicka'}
    * def authToken = myFeature.accessToken

  Scenario: POST Call
    Given url 'https://reqres.in/api/user?page=2'
    And autherization = "Bearer" + authToken
    When method GET
    Then status 204
