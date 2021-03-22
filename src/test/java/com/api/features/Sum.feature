Feature: Passing multiple & single arguements when method is called

  Scenario: Passing multiple arguments
    * def sum =
      """
      function(a,b)
      { return a+b;
      }
      """
    * def result = sum(1,2)
    Then print result
    And assert sum(1,2) == 3

  Scenario: Passing single arguments
    * def num =
      """
      function(a)
      { return a;
      }
      """
    * def result1 = call num 9
    Then print result1
    And assert result1 == 9
