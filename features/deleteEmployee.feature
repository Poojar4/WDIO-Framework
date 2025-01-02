Feature:Employees Object
    Scenario:Delete Employee record in Employees
        Given I open the site "/lightning/o/Account/list?filterName=__Recent"
        And I expect the url to contain "Account"
        And I move to element "Employees Tab"
        And I wait on element "Employees Tab" to be displayed
        And I click on the element "Employees Tab"
        And I wait on element "Employees Page" to be displayed
        And I expect that the element "Employees Page" contains the text "Employees"
        And I click on the element "Employee Trishika"
        And I wait on element "Employee Trishika Page" to be displayed
        And I expect that the element "Employee Trishika Page" contains the text "Trishika"
        And I click on the element "Employees Delete Button"
        And I wait on element "Delete Employee Page" to be displayed
        And I expect that the element "Delete Employee Page" contains the text "Delete Employee"
        And I click on the element "Delete Employee Button"
        And I wait on element "Delete Employee Toast Message" to be displayed
        And I expect that the element "Delete Employee Toast Message" contains the text "deleted"


    Scenario:Delete Employee record in Employees and Verify Cancel Button
        Given I open the site "/lightning/o/Account/list?filterName=__Recent"
        And I expect the url to contain "Account"
        And I move to element "Employees Tab"
        And I wait on element "Employees Tab" to be displayed
        And I click on the element "Employees Tab"
        And I wait on element "Employees Page" to be displayed
        And I expect that the element "Employees Page" contains the text "Employees"
        And I click on the element "Employee Trishika"
        And I wait on element "Employee Trishika Page" to be displayed
        And I expect that the element "Employee Trishika Page" contains the text "Trishika"
        And I click on the element "Employees Delete Button"
        And I wait on element "Delete Employee Page" to be displayed
        And I expect that the element "Delete Employee Page" contains the text "Delete Employee"
        And I click on the element "Delete Employee Cancel Button"
        And I wait on element "Employee Trishika Page" to be displayed
        And I expect that the element "Employee Trishika Page" contains the text "Trishika"