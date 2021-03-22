@ignore
Feature: Rerunning failed testcase

  Background: 
    * configure afterScenario =
      """
      function(){
      	var info =karate.info; 
      	karate.log(info);
      	if(info.errorMessage){
      		karate.call('Rerun.feature');
      	}
      }
      """

  Scenario: UI Screenshot Test
    * configure driver = {type:'chromedriver'}
    Given driver 'https://www.amazon.in/'
    Then maximize()
    * delay(1000).screenshot()
    And waitFor('#abc')
    
    # For specific WebElement screenshot pass webElement locator as argument
    # * delay(1000).screenshot("//tagName[@attribute='value']")
    
