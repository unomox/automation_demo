@loginTests
Feature: User Login
  Scenario Outline: Login to Adult Swim with username
    Given I have navigated to "<url>"
    And I select the Login button
    Then the Sign In Modal appears
    And I enter my registered username "<username>"
    And I enter my registered password "<password>"
    And I click the Sign In button
    Then I verify that the username appears

    Examples:
      | url                       | username  | password
      | http://www.adultswim.com/ | typo01    | Testing123

  Scenario Outline: Login to Adult Swim with email
    Given I have navigated to "<url>"
    And I select the Login button
    Then the Sign In Modal appears
    And I enter my registered email "<email>"
    And I enter my registered password "<password>"
    And I click the Sign In button
    Then I verify that the username appears

    Examples:
      | url                       | email                     | password
      | http://www.adultswim.com/ | hoaycock+001@nerdery.com  | Testing123

  Scenario Outline: Fail to login to Adult Swim
    Given I have navigated to "<url>"
    And I select the Login button
    Then the Sign In Modal appears
    And I enter my registered username "<username>"
    And I enter my registered password "<password>"
    And I click the Sign In button
    Then I check for the invalid login error message

    Examples:
      | url                       | username  | password
      | http://www.adultswim.com/ | typo0asdf | Testasdf