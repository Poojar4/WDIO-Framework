import { Then } from "@cucumber/cucumber";
import { expect } from "chai";
import test from "../../locators.json";
import commonAction from "./commonAction";
import { reverse } from "dns";

Then(
  /^I expect the url to contain "([^"]*)?"$/,
  async (expectedurl: string) => {
    const actualUrl = await browser.getUrl();
    await browser.pause(2000);
    expect(actualUrl).to.contains(expectedurl);
  }
);

Then(
  /^I expect that the element "([^"]*)?" contains the text "([^"]*)?"$/,
  async (element: string, text: string) => {
    const newbutton = test.locators[element];
    await (await $(newbutton)).waitForDisplayed();
    const ele = await $(newbutton).getText();
    expect(ele).to.contain(text);
  }
);

Then(
  /^I expect that element "([^"]*)?" is( not)* displayed$/,
  async (element: string, falseCase: boolean) => {
    const webelement = test.locators[element];
    const ele = await $(webelement);
    commonAction.checkIsDisplayed(ele, falseCase);
    // const checkValue = commonAction.checkIsDisplayed(ele);
    // if (falseCase) expect(checkValue).not.to.equal(true, `${ele} is displayed`);
    // else expect(checkValue).to.equal(true, `${ele} is not displayed`);
  }
);

// Then(/^I wait on element "([^"]*)?" to ( not)* be displayed$/,
//   async (selector: string, falseCase: boolean) => {
//     const spinnerEle = test.locators[selector];
//     const spinner = await $(spinnerEle);
    
//     await commonAction.checkIsNotDisplayed(spinner, falseCase);
    // if (falseCase) {
    //   console.log("I have entered the block");
    //   await (await spinner.waitForDisplayed({ timeout:5000, reverse: falseCase }));
    //   expect(spinner.waitForDisplayed()).not.toEqual(false);
    // } else {
    //   await spinner.waitForDisplayed();
    // }
  // }
// );
