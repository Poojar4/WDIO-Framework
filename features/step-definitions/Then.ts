import { Then } from "@cucumber/cucumber";
import { expect } from "chai";
import test from "../../locators.json";

Then(
  /^I expect the url to contain "([^"]*)?"$/,
  async (expectedurl: string) => {
    const actualUrl = await browser.getUrl();
    await browser.pause(2000);
    console.log("url is---------", actualUrl);
    expect(actualUrl).to.contains(expectedurl);
  }
);

Then(/^I expect that the element "([^"]*)?" contains the text "([^"]*)?"$/, async (element: string, text: string) => {
    const newbutton = test.locators[element];
    const ele=await $(newbutton).getText();
    expect(ele).to.contain(text);
  }
);

Then(/^I expect that element "([^"]*)?" is displayed$/, async (element:string) => {
    const webelement = test.locators[element];
    const ele=await (await $(webelement).isDisplayed());
    expect(ele).to.equal(true,"Element is not displayed");
});
