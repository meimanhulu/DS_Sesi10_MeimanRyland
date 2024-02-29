@digital-skola @login
Feature: Swag Labs - Login
  Background: User on the login page
    Given Meiman is on the login page

  @positive
  Scenario: As a standard_user, I want to log in successfully
    When Meiman login with "standard_user" credential
    Then Meiman should see home page

  @negative1
  Scenario: As a locked_out_user, I should get error message
    When Meiman login with "locked_out_user" credential
    Then Meiman should see error "Epic sadface: Sorry, this user has been locked out."

  @negative2
  Scenario: As a standart_user, I should get error message
    When Meiman login with "standart_user" credential
    Then Meiman should see error "Epic sadface: Username and password do not match any user in this service"