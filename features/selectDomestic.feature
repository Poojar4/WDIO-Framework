Feature: Opportunity Object
    Scenario:Select Domestic in Taxation filed in Opportunity
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
        And I click on the element "Taxation Dropdown" and select the option with the text "Domestic"
        And I expect that the element "Taxation Dropdown" contains the text "Domestic"