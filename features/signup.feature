@signupTests
Feature: User Signup
  Scenario Outline: Sign up for Adult Swim
    Given I have navigated to "<url>"
    And I select the Login button
    Then the Sign In Modal appears
    And  I select the Not Registered Yet button
    Then the Register With modal appears
    And I select my Birth Month from the dropdown
    And I select my Birth Day from the dropdown
    And I select my Birth Year from the dropdown
    And I enter my username "<username>"
    And I enter my email "<email>"
    And I enter my password "<password>"
    And I confirm my password "<password>"
    And I select the terms and privacy checkbox
    And I select Submit
    Then I verify that the username appears

    Examples:
    | url                       | username  | email                     | password
    | http://www.adultswim.com/ | typo01    | hoaycock+001@nerdery.com  | Testing123