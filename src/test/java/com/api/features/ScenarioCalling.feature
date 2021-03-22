Feature: Calling one scenario by another scenario within same feature file

  @tag1 @ignore
  Scenario: 1st scenario
    * print 'Scenario 1'

  @tag2
  Scenario: 2nd scenario
    * print 'Scenario 2'
    * def result = call read('ScenarioCalling.feature@tag1')