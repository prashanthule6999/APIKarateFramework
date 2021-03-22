Feature: Calling one scenario by another scenario from different feature file

  @tag3
  Scenario: 3rd scenario
    * print 'Scenario 3'
    * def result = call read('ScenarioCalling.feature@tag1')