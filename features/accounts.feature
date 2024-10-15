Feature: Accounts feature

Scenario:Creating Account entering valid data.

Given I open the site with url "https://zucitechsoftwaresolutions--ztdev1.sandbox.lightning.force.com/lightning/o/Account/list?filterName=__Recent"
And I expect the url to contain "https://zucitechsoftwaresolutions--ztdev1.sandbox.lightning.force.com/lightning/o/Account/list?filterName=__Recent"
And I pause for 3000ms
And I click on element "NewButton"
And I pause for 3000ms
And I expect the element "NewAccountpage" is displayed
And I pause for 3000ms
And I enter the value "Disney" for the element "AccountNamefield"
