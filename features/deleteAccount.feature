Feature: Account Object
    Scenario:Delete the Created Account
        Given I open the site "/lightning/o/Account/list?filterName=__Recent"
        Then I expect the url to contain "Account"
        When I click on the element "Disney"
        And I wait on element "Account Disney Page" to be displayed
        And I expect that the element "Account Disney Page" contains the text "Account"
        And I click on the element "Delete Button"
        And I wait on element "Delete Account Page" to be displayed
        And I expect that the element "Delete Account Page" contains the text "Delete Account"
        And I click on the element "Delete Page Button"
        And I wait on element "ToastContent Message" to be displayed
        And I expect that the element "ToastContent Message" contains the text "deleted"
