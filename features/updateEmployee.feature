Feature:Employees Object
    Scenario:Update Employee record in Employees
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
        And I wait on element "Employee Edit Button" to be enabled
        And I expect that the element "Employee Edit Button" contains the text "Edit"
        And I click on the element "Employee Edit Button"
        And I wait on element "Edit Trishika Page" to be displayed
        And I expect that the element "Edit Trishika Page" contains the text "Edit Trishika"
        And I enter the value "ZT102" for the element "Employee ID"
        And I enter the value "Trishu" for the element "Employee Name"
        And I enter the value "Vishwanath" for the element "Employee Last Name"
        And I enter the value "200000" for the element "Employee Cost"
        And I enter the value "trishu@gmail.com" for the element "Employee Email"
        And I enter the value "9876543210" for the element "Employee Phone"
        And I move to element "Business Unit"
        And I click on the element "Business Unit"
        # And I click on the element "Business Unit" and select the option with the text "Quality Assurance"
        And I click on the element "Quality Assurance Text"
        And I move to element "Designation"
        And I wait on element "Designation" to be displayed
        And I click on the element "Designation"
        And I click on the element "QA - I"
        And I wait on element "Employees Save Button" to be enabled
        And I click on the element "Employees Save Button"
        And I wait on element "Employees Toast Message" to be displayed
        And I expect that the element "Employees Toast Message" contains the text "saved"

    Scenario:Update Employee record in Employees and Verify Cancel Button
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
        And I wait on element "Employee Edit Button" to be enabled
        And I expect that the element "Employee Edit Button" contains the text "Edit"
        And I click on the element "Employee Edit Button"
        And I wait on element "Edit Trishika Page" to be displayed
        And I expect that the element "Edit Trishika Page" contains the text "Edit Trishika"
        And I enter the value "ZT102" for the element "Employee ID"
        And I enter the value "Trishu" for the element "Employee Name"
        And I enter the value "Vishwanath" for the element "Employee Last Name"
        And I enter the value "200000" for the element "Employee Cost"
        And I enter the value "trishu@gmail.com" for the element "Employee Email"
        And I enter the value "9876543210" for the element "Employee Phone"
        And I move to element "Business Unit"
        And I click on the element "Business Unit"
        And I click on the element "Business Unit" and select the option with the text "Quality Assurance"
        And I move to element "Designation"
        And I wait on element "Designation" to be displayed
        And I click on the element "Designation"
        And I click on the element "QA - I"
        And I wait on element "Employees Cancel Button" to be enabled
        And I click on the element "Employees Cancel Button"
        And I wait on element "Employees Page" to be displayed
        And I expect that the element "Employees Page" contains the text "Employees"

