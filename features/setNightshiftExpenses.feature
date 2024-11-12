Feature: Opportunity Object
    Scenario:Set Expenses for Night Shift
        Given I open the site "/lightning/o/Account/list?filterName=__Recent"
        And I expect the url to contain "Account"
        When I wait on element "Opportunity Tab" to be displayed
        And I move to element "Opportunity Tab"
        And I click on the element "Opportunities"
        And I wait on element "Opportunities Page" to be displayed
        And I move to element "Salesforce"
        And I wait on element "Salesforce" to be displayed
        And I click on the element "Salesforce"
        And I click on the element with text "Salesforce" in the list "Opportunity Search List"
        And I wait on element "Salesforce Page" to be displayed
        Then I expect that the element "Salesforce Text" contains the text "Salesforce"
        And I wait on element "Opportunities Edit Button" to be enabled
        And I expect that the element "Opportunities Edit Button" contains the text "Edit"
        And I click on the element "Opportunities Edit Button"
        And I wait on element "Edit Salesforce Page" to be displayed
        And I expect that the element "Edit Salesforce Page" contains the text "Edit Salesforce"
        And I enter the value "Salesforce Automation" for the element "Opportunity Name"
        And I enter the value "60000000" for the element "Amount"
        And I move to element "Opportunities Account Name Clear Button"
        And I click on the element "Opportunities Account Name Clear Button"
        And I move to element "Opportunities Account Name"
        And I wait on element "Opportunities Account Name" to be displayed
        And I enter the value "Disney" for the element "Opportunities Account Name"
        And I click on the element "Opportunity Account Name"
        And I wait on element "Taxation Dropdown" to be displayed
        And I click on the element "Taxation Dropdown" and select the option with the text "Domestic"
        And I wait on element "Month Dropdown" to be displayed
        And I move to element "Month Dropdown"
        And I click on the element "Month Dropdown" and select the option with the text "March"
        And I click on the element "Year Dropdown" and select the option with the text "2023"
        And I wait on element "Close Date" to be displayed
        And I enter the value "31/12/2023" for the element "Close Date"
        And I enter the value "70" for the element "Probability"
        And I enter the value "Salesforce Automation" for the element "Description"
        And I move to element "Forecast Category Dropdown"
        And I wait on element "Forecast Category Dropdown" to be displayed
        And I click on the element "Forecast Category Dropdown"
        And I click on the element "Forecast Category Dropdown Value"
        And I move to element "Stage Dropdown"
        And I click on the element "Stage Dropdown"
        And I click on the element "Stage Dropdown Value"
        And I move to element "Status Dropdown"
        And I click on the element "Status Dropdown"
        And I click on the element "Status Dropdown Value"
        And I enter the value "583129" for the element "PO Number"
        And I enter the value "582126" for the element "HSN/SAC"
        And I enter the value "Automation Testing" for the element "Next Step"
        And I enter the value "1200" for the element "Night Shift Expense"
        And I enter the value "600" for the element "PST Shift Expense"
        And I enter the value "1800" for the element "US Call Expense"
        And I enter the value "30000000" for the element "Present Cycle Expense"
        And I move to element "Budget Consumed Prev"
        And I click on the element "Budget Consumed Prev"
        And I enter the value "20000000" for the element "Budget Consumed Prev"
        And I move to element "Opportunity Type Dropdown"
        And I click on the element "Opportunity Type Dropdown"
        And I click on the element "Opportunity Type Dropdown Value"
        And I wait on element "Opportunity Save Button" to be enabled
        And I click on the element "Opportunity Save Button"
        And I wait on element "Opportunity Toast Message" to be displayed
        And I expect that the element "Opportunity Toast Message" contains the text "saved"
