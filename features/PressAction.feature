Feature: Key press operation

    Scenario: Keyboard operation
        Given I open the url "https://www.saucedemo.com/"
        And I enter the value "Testing" for the element "userName"
        And I pause for 4000ms
        And I click on "Control" and "a"