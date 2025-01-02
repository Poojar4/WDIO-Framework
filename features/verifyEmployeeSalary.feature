Feature:Opportunity Object
    Scenario:Verify that "Salary for working days" is calculated properly upon saving employee allowance data
        Given I open the site "/lightning/o/Account/list?filterName=__Recent"
        And I expect the url to contain "Account"
        When I wait on element "Opportunity Tab" to be displayed
        And I move to element "Opportunity Tab"
        And I click on the element "Opportunities"
        And I wait on element "Opportunities Page" to be displayed
        And I move to element "Salesforce"
        # And I enter the value "Salesforce" for the element "Opportunity Search List"
        # And I press "Enter"
        And I wait on element "Salesforce" to be displayed
        And I click on the element "Salesforce"
        And I click on the element with text "Salesforce" in the list "Opportunity Search List"
        And I wait on element "Salesforce Page" to be displayed
        And I move to element "Employee Trishika Dropdown"
        And I click on the element "Employee Trishika Dropdown"
        And I wait on element "Employee Trishika Edit Button" to be displayed
        And I click on the element "Employee Trishika Edit Button"
        And I wait on element "Edit Trishika Page" to be displayed
        And I expect that the element "Edit Trishika Page" contains the text "Edit Trishika"
        And I enter the value "4" for the element "Edit Trishika Page US Call"
        And I click on the element "Edit Trishika Save Button"
# And I wait on element "Employees Toast Message" to be displayed
# And I expect that the element "Employees Toast Message" contains the text "saved"

