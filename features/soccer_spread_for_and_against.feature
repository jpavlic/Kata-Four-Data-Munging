Feature: Find the team with the lowest for and against spread

  Background:
    Given I can store points spread

  Scenario: I find the team with the lowest for and against spread
    Given I have all the teams
    Then I can see "Aston_Villa" has a spread of 1