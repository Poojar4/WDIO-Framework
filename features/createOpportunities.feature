Feature: Opportunity Object
    Scenario: Creating Opportunity Record Entering All the Details
        Given I open the site "/lightning/o/Account/list?filterName=__Recent"
        And I expect the url to contain "Account"
        When I wait on element "Opportunity Tab" to be displayed
        And I move to element "Opportunity Tab"
        And I click on the element "Opportunities"
        # And I click on the element "Opportunities css" using js click
        And I wait on element "Opportunities Page" to be displayed
        And I expect that the element "Opportunities Page" contains the text "Opportunities"
        And I wait on element "New Opportunity Button" to be enabled
        Then I expect that the element "New Opportunity Button" contains the text "New"
        And I click on the element "New Opportunity Button"
        And I wait on element "New Opportunity Page" to be displayed
        And I expect that the element "New Opportunity Page" contains the text "New Opportunity"
        And I enter the value "Salesforce" for the element "Opportunity Name"
        And I enter the value "Disney" for the element "Opportunities Account Name"
        And I click on the element "Opportunity Account Name"
        And I enter the value "50000000" for the element "Amount"
        And I wait on element "Taxation Dropdown" to be displayed
        And I click on the element "Taxation Dropdown" and select the option with the text "International"
        And I wait on element "Month Dropdown" to be displayed
        And I move to element "Month Dropdown"
        And I click on the element "Month Dropdown" and select the option with the text "January"
        And I click on the element "Year Dropdown" and select the option with the text "2024"
        And I wait on element "Close Date" to be displayed
        And I enter the value "31/12/2024" for the element "Close Date"
        And I enter the value "100" for the element "Probability"
        And I enter the value "About Salesforce" for the element "Description"
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
        And I enter the value "56789" for the element "PO Number"
        And I enter the value "2468" for the element "HSN/SAC"
        And I enter the value "Testing" for the element "Next Step"
        And I enter the value "1000" for the element "Night Shift Expense"
        And I enter the value "500" for the element "PST Shift Expense"
        And I enter the value "1500" for the element "US Call Expense"
        And I enter the value "20000000" for the element "Present Cycle Expense"
        And I move to element "Budget Consumed Prev"
        And I click on the element "Budget Consumed Prev"
        And I enter the value "10000000" for the element "Budget Consumed Prev"
        And I move to element "Opportunity Type Dropdown"
        And I click on the element "Opportunity Type Dropdown"
        And I click on the element "Opportunity Type Dropdown Value"
        And I wait on element "Opportunity Save Button" to be enabled
        And I click on the element "Opportunity Save Button"
        And I wait on element "Opportunity Toast Message" to be displayed
        And I expect that the element "Opportunity Toast Message" contains the text "created"

    Scenario: Creating the Opportunity Record and Verify Save and New Button
        Given I open the site "/lightning/o/Account/list?filterName=__Recent"
        And I expect the url to contain "Account"
        When I wait on element "Opportunity Tab" to be displayed
        And I move to element "Opportunity Tab"
        And I click on the element "Opportunities"
        And I wait on element "Opportunities Page" to be displayed
        And I wait on element "New Opportunity Button" to be enabled
        Then I expect that the element "New Opportunity Button" contains the text "New"
        And I click on the element "New Opportunity Button"
        And I wait on element "New Opportunity Page" to be displayed
        And I expect that the element "New Opportunity Page" contains the text "New Opportunity"
        And I enter the value "Salesforce" for the element "Opportunity Name"
        And I enter the value "Disney" for the element "Opportunities Account Name"
        And I click on the element "Opportunity Account Name"
        And I enter the value "50000000" for the element "Amount"
        And I wait on element "Taxation Dropdown" to be displayed
        And I click on the element "Taxation Dropdown" and select the option with the text "International"
        And I wait on element "Month Dropdown" to be displayed
        And I move to element "Month Dropdown"
        And I click on the element "Month Dropdown" and select the option with the text "January"
        And I click on the element "Year Dropdown" and select the option with the text "2024"
        And I wait on element "Close Date" to be displayed
        And I enter the value "31/12/2024" for the element "Close Date"
        And I enter the value "100" for the element "Probability"
        And I enter the value "About Salesforce" for the element "Description"
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
        And I enter the value "56789" for the element "PO Number"
        And I enter the value "2468" for the element "HSN/SAC"
        And I enter the value "Testing" for the element "Next Step"
        And I enter the value "1000" for the element "Night Shift Expense"
        And I enter the value "500" for the element "PST Shift Expense"
        And I enter the value "1500" for the element "US Call Expense"
        And I enter the value "20000000" for the element "Present Cycle Expense"
        And I move to element "Budget Consumed Prev"
        And I click on the element "Budget Consumed Prev"
        And I enter the value "10000000" for the element "Budget Consumed Prev"
        And I move to element "Opportunity Type Dropdown"
        And I click on the element "Opportunity Type Dropdown"
        And I click on the element "Opportunity Type Dropdown Value"
        And I wait on element "Opportunity Save and New Button" to be enabled
        And I click on the element "Opportunity Save and New Button"
        And I wait on element "Opportunity Toast Message" to be displayed
        And I expect that the element "Opportunity Toast Message" contains the text "created"
        And I wait on element "New Opportunity Page" to be displayed
        And I expect that the element "New Opportunity Page" contains the text "New Opportunity"

    Scenario: Creating the Opportunity Record and Verify Cancel Button
        Given I open the site "/lightning/o/Account/list?filterName=__Recent"
        And I expect the url to contain "Account"
        When I wait on element "Opportunity Tab" to be displayed
        And I move to element "Opportunity Tab"
        And I click on the element "Opportunities"
        And I wait on element "Opportunities Page" to be displayed
        And I wait on element "New Opportunity Button" to be enabled
        Then I expect that the element "New Opportunity Button" contains the text "New"
        And I click on the element "New Opportunity Button"
        And I wait on element "New Opportunity Page" to be displayed
        And I expect that the element "New Opportunity Page" contains the text "New Opportunity"
        And I enter the value "Salesforce" for the element "Opportunity Name"
        And I enter the value "Disney" for the element "Opportunities Account Name"
        And I click on the element "Opportunity Account Name"
        And I enter the value "50000000" for the element "Amount"
        And I wait on element "Taxation Dropdown" to be displayed
        And I click on the element "Taxation Dropdown" and select the option with the text "International"
        And I wait on element "Month Dropdown" to be displayed
        And I move to element "Month Dropdown"
        And I click on the element "Month Dropdown" and select the option with the text "January"
        And I click on the element "Year Dropdown" and select the option with the text "2024"
        And I wait on element "Close Date" to be displayed
        And I enter the value "31/12/2024" for the element "Close Date"
        And I enter the value "100" for the element "Probability"
        And I enter the value "About Salesforce" for the element "Description"
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
        And I enter the value "56789" for the element "PO Number"
        And I enter the value "2468" for the element "HSN/SAC"
        And I enter the value "Testing" for the element "Next Step"
        And I enter the value "1000" for the element "Night Shift Expense"
        And I enter the value "500" for the element "PST Shift Expense"
        And I enter the value "1500" for the element "US Call Expense"
        And I enter the value "20000000" for the element "Present Cycle Expense"
        And I move to element "Budget Consumed Prev"
        And I click on the element "Budget Consumed Prev"
        And I enter the value "10000000" for the element "Budget Consumed Prev"
        And I move to element "Opportunity Type Dropdown"
        And I click on the element "Opportunity Type Dropdown"
        And I click on the element "Opportunity Type Dropdown Value"
        And I wait on element "Opportunity Cancel Button" to be enabled
        And I click on the element "Opportunity Cancel Button"
        And I wait on element "Opportunities Page" to be displayed
        And I expect that the element "Opportunities Page" contains the text "Opportunities"

    