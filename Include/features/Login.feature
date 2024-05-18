Feature: Login Feature

	@AOW0001-001
  Scenario: Show Pop Up Login
    Given user on the landing page
    When user click button icon "User" in the header
    Then user verify the web displays a login form 

  @AOW0001-002
  Scenario: Login With Registered Account
    Given User on the landing page
    When User login with "adminqa@qa.com" and "Pukimai"
    Then User is in homepage

  @AOW0001-003
  Scenario: Login With Facebook Account
    Given I want to write a step with "qntl"
    When I check for the 12 in step
    Then I verify the "biji" in step

  @AOW0001-004
  Scenario: Login With Unregistered Account
    Given I want to write a step with "qntl"
    When I check for the 12 in step
    Then I verify the "biji" in step

  @AOW0001-005
  Scenario: Login With Wrong Password
    Given I want to write a step with "qntl"
    When I check for the 12 in step
    Then I verify the "biji" in step

  @AOW0001-006
  Scenario: Login With Wrong Password Four Times
    Given I want to write a step with "qntl"
    When I check for the 12 in step
    Then I verify the "biji" in step

  @AOW0001-007
  Scenario: Login With Temporarily Blocked Account Status
    Given I want to write a step with "qntl"
    When I check for the 12 in step
    Then I verify the "biji" in step

  @AOW0001-008
  Scenario: Login Without Input Mandatory Fields
    Given I want to write a step with "qntl"
    When I check for the 12 in step
    Then I verify the "biji" in step
