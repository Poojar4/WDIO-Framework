Feature: Accounts Object
    Scenario: Creating Account Entering Valid Data.
        Given I open the site "/lightning/o/Account/list?filterName=__Recent"
        And I expect the url to contain "Account"
        When I wait on element "New Button" to be enabled
        Then I expect that the element "New Button" contains the text "New"
        And I click on the element "New Button"
        And I wait on element "New Account Page" to be displayed
        And I expect that the element "New Account Page" contains the text "New Account"
        And I enter the value "Disney" for the element "Account Name"
        And I click on the element "Type Dropdown" and select the option with the text "Partner"
        And I click on the element "Website"
        And I enter the value "https://gmail.com" for the element "Website"
        And I click on the element "Textarea"
        And I enter the value "Client details" for the element "Textarea"
        And I click on the element "Employees"
        And I enter the value "10" for the element "Employees"
        And I wait on element "Parent Account Input Field" to be displayed
        And I input text "Testing" for element "Parent Account Input Field" and select option contains text "Testing"
        And I click on the element "Email"
        And I enter the value "pooja@gmail.com" for the element "Email"
        And I click on the element "Phone"
        And I enter the value "987654321" for the element "Phone"
        And I click on the element "Industry Dropdown" and select the option with the text "Agriculture"
        And I scroll to element "Billing Address"
        And I expect that element "Billing Address" is displayed
        And I click on the element "Billing Address"
        And I enter the value "Bangalore" for the element "Billing Address"
        And I wait on element "Save button" to be enabled
        And I click on the element "Save button"
        # And I wait on element "Toast Message" to be displayed
        # And I expect that the element "Toast Message" contains the text "Disney"

    Scenario: Verify Save and New Button
        Given I open the site "/lightning/o/Account/list?filterName=__Recent"
        And I expect the url to contain "Account"
        When I wait on element "New Button" to be enabled
        Then I expect that the element "New Button" contains the text "New"
        And I click on the element "New Button"
        And I wait on element "New Account Page" to be displayed
        And I expect that the element "New Account Page" contains the text "New Account"
        And I enter the value "Disney" for the element "Account Name"
        And I click on the element "Type Dropdown" and select the option with the text "Partner"
        And I click on the element "Website"
        And I enter the value "https://gmail.com" for the element "Website"
        And I click on the element "Textarea"
        And I enter the value "Client details" for the element "Textarea"
        And I click on the element "Employees"
        And I enter the value "10" for the element "Employees"
        And I input text "Testing" for element "Parent Account Input Field" and select option contains text "Testing"
        And I click on the element "Email"
        And I enter the value "pooja@gmail.com" for the element "Email"
        And I click on the element "Phone"
        And I enter the value "987654321" for the element "Phone"
        And I click on the element "Industry Dropdown" and select the option with the text "Agriculture"
        And I scroll to element "Billing Address"
        And I expect that element "Billing Address" is displayed
        And I click on the element "Billing Address"
        And I enter the value "Bangalore" for the element "Billing Address"
        And I wait on element "Save and New Button" to be enabled
        And I click on the element "Save and New Button"
        And I wait on element "Toast Message" to be displayed
        And I expect that the element "Toast Message" contains the text "Disney"
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
        And I click on the element "Type Dropdown" and select the option with the text "Partner"
        And I click on the element "Website"
        And I enter the value "https://gmail.com" for the element "Website"
        And I click on the element "Textarea"
        And I enter the value "Client details" for the element "Textarea"
        And I click on the element "Employees"
        And I enter the value "10" for the element "Employees"
        And I input text "Testing" for element "Parent Account Input Field" and select option contains text "Testing"
        And I click on the element "Email"
        And I enter the value "pooja@gmail.com" for the element "Email"
        And I click on the element "Phone"
        And I enter the value "987654321" for the element "Phone"
        And I click on the element "Industry Dropdown" and select the option with the text "Agriculture"
        And I scroll to element "Billing Address"
        And I expect that element "Billing Address" is displayed
        And I click on the element "Billing Address"
        And I enter the value "Bangalore" for the element "Billing Address"
        And I wait on element "Cancel Button" to be enabled
        And I click on the element "Cancel Button"
        And I wait on element "Accounts Page" to be displayed
        And I expect that the element "Accounts Page" contains the text "Accounts"

