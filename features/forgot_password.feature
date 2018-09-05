@forgotPasswordTests
Feature: Forgot Password
  Scenario Outline: Resetting password
    Given I have navigated to "<url>"
    And I select the Login button
    Then the Sign In Modal appears
    And I select the forgot password button
    Then the Forgot Password modal appears
    And I enter the email "<email>" used to register
    And I select the Send It button
    Then I verify that the What's My Password modal appears

  Examples:
  | url                       | email
  | http://www.adultswim.com/ | hoaycock+001@nerdery.com