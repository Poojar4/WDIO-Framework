Feature:Opportunity Object
    Scenario:Generate invoice by clicking on "Generate Invoice" button
        Given I open the site "/lightning/o/Account/list?filterName=__Recent"
        And I expect the url to contain "Account"
        When I wait on element "Opportunity Tab" to be displayed
        And I move to element "Opportunity Tab"
        And I click on the element "Opportunities"
        And I wait on element "Opportunities Page" to be displayed
        Then I expect that the element "Opportunities Page" contains the text "Opportunities"
        # And I enter the value "Salesforce" for the element "Opportunity Search List"
        # And I press "Enter"
        And I move to element "Salesforce"
        And I wait on element "Salesforce" to be displayed
        And I click on the element "Salesforce"
        And I click on the element with text "Salesforce" in the list "Opportunity Search List"
        And I wait on element "Salesforce Page" to be displayed
        And I click on the element "Generate Invoice Button"
        And I expect that the element "Generate Invoice Text" contains the text "Generate Invoice"
        And I click on the element "Invoice Checkbox"
        And I click on the element "Confirm Button"
        And I expect that the element "Generate Invoice Text" contains the text "Generate Invoice"
        And I click on the element "Invoice Month Dropdown"
        And I select the option with text "January" for the element "Invoice Month Dropdown"
        And I click on the element "Invoice Year Dropdown"
        And I select the option with text "2024" for the element "Invoice Year Dropdown"
        And I click on the element "Invoice Next button"
        And I expect that the element "Invoice Generated Message" contains the text "January"
        And I click on the element "Confirm Button"
        And I wait on element "Invoice Date" to be displayed
        And I clear the inputfield "Invoice Date"
        # And I press
        And I enter the value "31-Jan-2024" for the element "Invoice Date"
        And I click on the element "Invoice Finish Button"
        And I wait on element "Opportunities Page" to be displayed
        And I expect that the element "Opportunities Page" contains the text "Opportunities"


