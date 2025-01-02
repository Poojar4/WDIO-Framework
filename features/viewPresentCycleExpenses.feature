Feature:Opportunity Object
   Scenario:View the Present Cycle Expenses field in opportunity
      Given I open the site "/lightning/o/Account/list?filterName=__Recent"
      And I expect the url to contain "Account"
      When I wait on element "Opportunity Tab" to be displayed
      And I move to element "Opportunity Tab"
      And I click on the element "Opportunities"
      And I wait on element "Opportunities Page" to be displayed
      Then I expect that the element "Opportunities Page" contains the text "Opportunities"
      # And I enter the value "Salesforce" for the element "Opportunity Search List"
      # And I press "Enter"
      #   And I move to element "Salesforce"
      And I wait on element "Salesforce" to be displayed
      And I click on the element "Salesforce"
      And I click on the element with text "Salesforce" in the list "Opportunity Search List"
      And I wait on element "Salesforce Page" to be displayed
      And I move to element "Opportunities Present Cycle Expenses"
      And I wait on element "Opportunities Present Cycle Expenses" to be displayed
      And I expect that the element "Opportunities Present Cycle Expenses" contains the text "$20,000,000.00"

