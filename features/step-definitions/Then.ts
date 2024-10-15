import { Then } from "@cucumber/cucumber";
import { expect } from 'chai';
import test from "../../testdata.json";


Then(/^I expect the url to contain "([^"]*)?"$/, async (expectedurl) => {
    const actualUrl = await browser.getUrl();
    console.log(actualUrl);
    expect(actualUrl).to.contain(expectedurl);

});

Then(/^I expect the element "([^"]*)?" is displayed$/, async (element) => {
    const newAccountPage = test.locators[element];
    console.log(newAccountPage);
    const page = await $(newAccountPage).isDisplayed();
    console.log(`new account page is displayed:${page}`);
})


