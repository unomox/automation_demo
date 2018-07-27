Feature: Login Page
  Scenario: User successfully logs in
    Given I have navigated to the homepage
    When I enter my username
    And I enter my password
    And I click the Log In button
    Then I should see I am logged in

  Scenario: A blank email results in validation error
    Given I have navigated to the homepage
    And I click the email address field
    And I click the password field
    Then I should see a validation error for the Email Address field
    Then I should see the Log In button is disabled

  Scenario: A partial email results in validation error
    Given I have navigated to the homepage
    And I enter a partial email into the email address field
    And I click the password field
    Then I should see a validation error for the Email Address field
    Then I should see the Log In button is disabled

  Scenario: A blank password results in validation error
    Given I have navigated to the homepage
    When I enter my username
    And I click the Password field
    And I click on the Email Address field
    Then I should see a validation error for the Password field
    Then I should see the Log In button is disabled

