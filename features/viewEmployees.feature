Feature: Opportunity Object
    Scenario:View the Employees not added to the opportunity
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
        And I click on the element "Employees Dropdown"
        And I wait on element "Add Employee" to be displayed
        And I move to element "Add Employee"
        And I click on the element "Add Employee"
        And I wait on element "Add Employees iframe" to be displayed
        And I switch to iframe "Add Employees iframe"
        And I wait until the element "Add Employees Page" is displayed
        And I wait on element "Add Employees Page" to be displayed
        And I expect that the element "Add Employees Page" contains the text "Add Employees"
        And I click on the element "Employee Search Bar"
        And I enter the value "1001" for the element "Employee Search Bar"
        And I press "Enter"
        And I wait on element "Employee Details" to be displayed