Feature: Find the day with the lowest change of temperature in 2002

  Background:
    Given I can store temperature changes

  Scenario: I find the day that the temperature changes the least in 2002
    Given I have all the temperatures in 2002 by day
    Then I can see the day with the smallest temperature change is "14" and the change is 2