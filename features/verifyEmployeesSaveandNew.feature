Feature:Employees Object
    Scenario:Employee Record creation by entering valid data and verify Save and New Button
        Given I open the site "/lightning/o/Account/list?filterName=__Recent"
        And I expect the url to contain "Account"
        And I move to element "Employees Tab"
        And I wait on element "Employees Tab" to be displayed
        And I click on the element "Employees Tab"
        # And I pause for 2000ms
        And I wait on element "Employees Page" to be displayed
        And I expect that the element "Employees Page" contains the text "Employees"
        And I wait on element "Employees New Button" to be displayed
        # And I wait on element "Employees New Button" to be enabled
        # And I expect that the element "Employees New Button" contains the text "New"
        And I click on the element "Employees New Button"
        And I wait on element "New Employee Page" to be displayed
        And I expect that the element "New Employee Page" contains the text "New Employee"
        And I enter a random id for the element "Employee ID"
        And I enter the value "Trishika" for the element "Employee Name"
        And I enter the value "Vishwanath" for the element "Employee Last Name"
        And I enter the value "100000" for the element "Employee Cost"
        And I enter the value "trishika@gmail.com" for the element "Employee Email"
        And I enter the value "987654321" for the element "Employee Phone"
        And I move to element "Business Unit"
        And I click on the element "Business Unit"
        And I click on the element "Business Unit" and select the option with the text "QA Automation"
        And I move to element "Designation"
        And I click on the element "Designation"
        # And I click on the element "Designation" and select the option with the text "QA Automation Lead"
        And I click on the element "QA Automation Lead"
        And I wait on element "Employees Save and New Button" to be enabled
        And I click on the element "Employees Save and New Button"
        And I wait on element "Employees Toast Message" to be displayed
        And I expect that the element "Employees Toast Message" contains the text "created"
        And I wait on element "New Employee Page" to be displayed
        And I expect that the element "New Employee Page" contains the text "New Employee"
        And I refresh a page
