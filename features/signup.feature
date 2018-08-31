Feature: User Signup

  Scenario: Attempt to create an adultswim account with an invalid user name
    Given I navigate to adultswim.com
    And I click the login button
    And I click the Not Registered Start Here button
    And I enter my information with an invalid user name
    Then I should see "Invalid username"

  Scenario: Attempt to create an adultswim account with an invalid email address
    Given I navigate to adultswim.com
    And I click the login button
    And I click the Not Registered Start Here button
    And I enter my information with an invalid email address
    Then I should see "E-mail address is invalid"

  Scenario: Attempt to create an adultswim account with unmatching password re-enter
    Given I navigate to adultswim.com
    And I click the login button
    And I click the Not Registered Start Here button
    And I enter my information with unmatching password re-enter
    Then I should see "Passwords do not match"

  Scenario: Create a new account on adultswim.com
    Given I navigate to adultswim.com
    And I click the login button
    And I click the Not Registered Start Here button
    And I enter my information
    And I check the terms of service box
    And I click submit
    Then I should see "Verify Your Email Address"