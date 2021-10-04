Feature: User login

  As a registered user,
  I want to login to the system,
  so that I can use the system.

  Scenario: User logged in successfully
    Given user provides valid login information
    When user login
    Then the home page should be displayed
