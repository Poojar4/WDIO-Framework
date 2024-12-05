Feature:Opportunity Object
    Scenario:Add Employees In Opportunity Record
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
        And I wait until the element "Add Employees iframe" is displayed
        And I switch to iframe "Add Employees iframe"
       
        And I pause for 2000ms
        # And I wait until the element "Add Employees Page" is displayed
        # And I wait on element "Add Employees Page" to be displayed
        # And I expect that the element "Add Employees Page" contains the text "Add Employees"
        # And I wait on element "Employee Search Bar" to be displayed
        # And I move to element "Employee Search Bar"
        # And I enter the value "Trishika" for the element "Employee Search Bar"
        # And I press "Enter"
        # And I wait on element "Add Employees Checkbox" to be displayed
        # And I move to element "Add Employees Checkbox"
        # And I click on any one element matching "Add Employees Checkbox"
        And I click on the element "Add Employees Checkbox"
        And I click on the element "Opportunities Finish Button"
        And I switch back to the parent frame
        And I expect that the element "Employees Count" contains the text "Employees(1)"


