import { When } from "@cucumber/cucumber";
import test from "../../testdata.json";
import { time } from "console";

When(/^I click on element "([^"]*)?"$/, async (element) => {
    const newButton = test.locators[element];
    console.log(`button is clicked:${newButton}`);
    await $(newButton).isClickable();
    await $(newButton).click();
    
});

When(/^I pause for ([^"]*)?$/, async (time) => {
    await browser.pause(time);
})