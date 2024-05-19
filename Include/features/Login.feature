Feature: Login Feature
	Test Scenario Login Module

  @AOW0001-001
  Scenario: Show Pop Up Login
    Given user on the landing screen
    When user click button icon "User" in the header
    Then user verify the web displays a login form

  @AOW0001-002
  Scenario: Login With Registered Account
    Given user on the landing screen
    And user click button icon "User" in the header
    When user login with "adminqa@ethereal.email" and "adminqa!@#123"
    Then user verify login successfully

  @AOW0001-003
  Scenario: Login With Facebook Account
    Given user on the landing screen
    And user click button icon "User" in the header
    When user click the button Sign In With Facebook
    Then user verify login with facebook successfully

  @AOW0001-004
  Scenario: Login With Unregistered Account
    Given user on the landing screen
    And user click button icon "User" in the header
    When user login with "adminqa@ethereal.email" and "adminqa!@#123"
    Then user verify login failed

  @AOW0001-005
  Scenario: Login With Wrong Password
    Given user on the landing screen
    And user click button icon "User" in the header
    When user login with "adminqa2@ethereal.email" and "adminqa!@#890"
    Then user verify login failed

  @AOW0001-006
  Scenario: Login With Wrong Password Four Times
    Given user on the landing screen
    And user click button icon "User" in the header
    When user login with "adminqa@ethereal.email" and "adminqa!@#890"
    Then user verify login failed

  @AOW0001-007
  Scenario: Login With Temporarily Blocked Account Status
    Given user on the landing screen
    And user click button icon "User" in the header
    When user login with "adminqa@ethereal.email" and "adminqa!@#123"
    Then user verify login failed

  @AOW0001-008
  Scenario: Login Without Input Mandatory Fields
    Given user on the landing screen
    When user click button icon "User" in the header
    Then user verify the sign in button is disabled

  @AOW0001-009
  Scenario: Login With Remember Me
    Given user on the landing screen
    And user click button icon "User" in the header
    When user remember login with "adminqa@ethereal.email" and "adminqa!@#123"
    Then user verify login successfully
