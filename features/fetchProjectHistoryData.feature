Feature:Invoices Object
    Scenario:Verify User is able to fetch data in project History
        Given I open the site "/lightning/o/Account/list?filterName=__Recent"
        And I expect the url to contain "Account"
        When I move to element "Project History"
        And I wait on element "Project History" to be displayed
        And I click on the element "Project History"
        And I wait on element "Project History Page" to be displayed
        Then I expect that the element "Project History Page" contains the text "History"
        And I click on the element "Project History Name"
        And I wait on element "Project History Name Page" to be displayed
        And I expect that the element "Project History Name Page" contains the text "Salesforce (March 2024)"


