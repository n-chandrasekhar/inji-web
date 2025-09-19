Feature: Inji web homepage testing

  @oidcLogin @mobileview
  Scenario Outline: User first time login with OIDC using various passcode attempts
    When user performs token-based login using Gmail refresh token
    Then user verifies the submit button is not enabled
    And user enters the passcode "<initialPasscode>"
    Then user click on toggle button
    Then user verify the toggle button
    And user enters the passcode for confirmation "<initialPasscode>"
    And user click on toggle button for confirmation
    And user click on submit button
    Then user click on collapse button
    Then user sees a valid welcome message
    Then user click on hamburger menu from user account
    Then user selects profile option for mobile
    Then user verify My Profile Text
    Then user verify back arrow button
    Then user verify home arrow button
    Then user verify label fullname
    Then user verify label fullname value
    Then user verify label fullname info
    Then user verify label fullname info value
    Then user click on back arrow button verify userhome page
    Then user verify current url userhome
    Then user click on hamburger menu from user account
    And user verifies "Profile" option is present in dropdown for mobile
    And user verifies "FAQ" option is present in dropdown for mobile
    And user verifies "Logout" option is present in dropdown
    Then user selects profile option for mobile
    Then user click on home arrow button verify userhome page
    Then user verify current url userhome
    Then user click on collapse button
    When user fetches highlight status of "Home" menu
    Then user verifies "Home" text is highlighted
    And user verifies "Home" icon is highlighted
    And user verifies visual bar is present near "Home"
    Then user click on stored credentials button
    And user verify current url usercredentials
    When user fetches highlight status of "Stored Cards" menu
    Then user verifies "Stored Cards" text is highlighted
    And user verifies "Stored Cards" icon is highlighted
    And user verifies visual bar is present near "Stored Cards"
    Then user click on collapse button
    Then user click on hamburger menu from user account
    And user click on FAQ button for mobile
    Then user verify current url faq
    Then user click on collapse button
    Then user click on stored credentials button
    Then user verify current url usercredentials
    Then user click on collapse button
    Then user verify no cards stored message
    Then user verify substring when no cards stored
    Then User click on cards button
    And User search the issuers mosip
    When User click on download mosip credentials button
    Then User verify list of credential types displayed
    And User verify mosip national id by e-signet displayed
    When User click on mosip national id by e-signet button
    And User verify login page lables
    And User verify vid input box header
    And User enter the uin
    And User click on getOtp button
    And User enter the otp
    And User click on verify button
    Then user click on collapse button
    And User search the issuers sunbird
    And User verify sunbird cridentials button
    And User click on sunbird cridentials button
    Then User verify list of credential types displayed
    And User verify sunbird rc insurance verifiable credential displayed
    And User click on sunbird rc insurance verifiable credential button
    And User enter the policy number
    And User enter the full name
    And User enter the date of birth
    And User click on login button
    Then user click on collapse button
    Then user verifies card search functionality
    Then user click on logout button for mobile
    Examples:
      | initialPasscode | wrongConfirmation1 | stringPasscode |
      | 123456          | 123455             | abcdef         |
