Feature: User login

  Scenario: User logged in successfully
    Given user provides valid login information
    When user login
    Then the home page should be displayed
