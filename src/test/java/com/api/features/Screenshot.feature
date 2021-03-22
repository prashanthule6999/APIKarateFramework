@ignore
Feature: Karate UI Automation ScreenShot

  Background: 
    * configure afterScenario =
      """
      function(){
      	var info =karate.info; 
      	karate.log(info);
      	if(info.errorMessage){
      		driver.screenshot();
      	}
      }
      """

  Scenario: UI Screenshot Test
    * configure driver = {type:'chromedriver'}
    Given driver 'https://www.amazon.in/'
    Then maximize()
    * delay(1000).screenshot()
    
    # For specific WebElement screenshot pass webElement locator as argument
    # * delay(1000).screenshot("//tagName[@attribute='value']")
    
