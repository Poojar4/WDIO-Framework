Feature:Opportunity Object
    Scenario:View the Budget Remaining from the Total Project Cost
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
        And I move to element "Opportunities Total Project Amount"
        And I wait on element "Opportunities Total Project Amount" to be displayed
        And I expect that the element "Opportunities Total Project Amount" contains the text "$50,000,000.00"
        And I wait on element "Opportunities Budget Remaining" to be displayed
        And I expect that the element "Opportunities Budget Remaining" contains the text "$20,000,000.00"