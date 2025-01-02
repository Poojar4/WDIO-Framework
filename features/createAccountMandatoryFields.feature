Feature: Account Object
Scenario: Creating Account Entering All Mandatory Details.
        Given I open the site "/lightning/o/Account/list?filterName=__Recent"
        And I expect the url to contain "Account"
        When I wait on element "New Button" to be enabled
        Then I expect that the element "New Button" contains the text "New"
        And I click on the element "New Button"
        And I wait on element "New Account Page" to be displayed
        And I expect that the element "New Account Page" contains the text "New Account"
        And I enter the value "Disney" for the element "Account Name"
        And I wait on element "Save button" to be enabled
        And I click on the element "Save button"
        And I wait on element "Toast Message" to be displayed
        And I expect that the element "Toast Message" contains the text "Disney"

    Scenario: Verify Save and New Button
        Given I open the site "/lightning/o/Account/list?filterName=__Recent"
        And I expect the url to contain "Account"
        When I wait on element "New Button" to be enabled
        Then I expect that the element "New Button" contains the text "New"
        And I click on the element "New Button"
        And I wait on element "New Account Page" to be displayed
        And I expect that the element "New Account Page" contains the text "New Account"
        And I enter the value "Disney" for the element "Account Name"
        And I wait on element "Save and New Button" to be enabled
        And I click on the element "Save and New Button"
        # And I wait on element "Toast Message" to be displayed
        # And I expect that the element "Toast Message" contains the text "Disney"
        And I wait on element "New Accounts Page" to be displayed
        And I expect that the element "New Accounts Page" contains the text "New Account"

    Scenario: Verify Cancel Button
        Given I open the site "/lightning/o/Account/list?filterName=__Recent"
        And I expect the url to contain "Account"
        When I wait on element "New Button" to be enabled
        Then I expect that the element "New Button" contains the text "New"
        And I click on the element "New Button"
        And I wait on element "New Account Page" to be displayed
        And I expect that the element "New Account Page" contains the text "New Account"
        And I enter the value "Disney" for the element "Account Name"
        And I wait on element "Cancel Button" to be enabled
        And I click on the element "Cancel Button"
        And I wait on element "Accounts Page" to be displayed
        And I expect that the element "Accounts Page" contains the text "Accounts"