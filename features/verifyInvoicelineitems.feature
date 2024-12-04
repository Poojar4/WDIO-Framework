Feature:Invoices Object
    Scenario:Verify InvoiceLineItems
        Given I open the site "/lightning/o/Account/list?filterName=__Recent"
        And I expect the url to contain "Account"
        When I wait on element "Opportunity Tab" to be displayed
        And I move to element "Opportunity Tab"
        And I click on the element "Opportunities"
        And I wait on element "Opportunities Page" to be displayed
        Then I expect that the element "Opportunities Page" contains the text "Opportunities"
        And I move to element "Salesforce"
        And I wait on element "Salesforce" to be displayed
        And I click on the element "Salesforce"
        And I click on the element with text "Salesforce" in the list "Opportunity Search List"
        And I wait on element "Salesforce Page" to be displayed
        And I click on the element "Generate Invoice Button"
        And I expect that the element "Generate Invoice Text" contains the text "Generate Invoice"
        And I click on the element "Invoice Checkbox"
        And I click on the "Confirm Button" or "Invoice Next button" button
        And I expect that the element "Generate Invoice Text" contains the text "Generate Invoice"
        And I click on the element "Invoice Month Dropdown"
        And I select the option with text "March" for the element "Invoice Month Dropdown"
        And I click on the element "Invoice Year Dropdown"
        And I select the option with text "2024" for the element "Invoice Year Dropdown"
        And I click on the element "Invoice Next button"
        And I expect that the element "Invoice Generated Message" contains the text "March"
        And I click on the element "Confirm Button"
        And I move to element "Invoice Date"
        And I wait on element "Invoice Date" to be displayed
        And I clear the inputfield "Invoice Date"
        And I enter the value "31-Mar-2024" for the element "Invoice Date"
        And I wait on element "Invoice Finish Button" to be displayed
        And I click on the element "Invoice Finish Button"
        And I wait on element "Opportunities Page" to be displayed
        And I expect that the element "Opportunities Page" contains the text "Opportunities"
        And I wait on element "Invoices Tab" to be displayed
        And I move to element "Invoices Tab"
        And I click on the element "Invoices Tab"
        And I wait on element "Invoices Page" to be displayed
        And I expect that the element "Invoices Page" contains the text "Invoices"
        And I click on the element "Recently Viewed Dropdown" and select the option with the text "All"
        And I wait on element "Invoice All Page" to be displayed
        And I expect that the element "Invoice All Page" contains the text "All"
        And I click on the element "Invoice name"
        And I click on the element "Invoice Related"
        And I wait on element "Invoicelineitems" to be displayed
        And I wait on element "Trishika Employee" to be displayed
        And I expect that the element "Trishika Employee" contains the text "Trishika"
