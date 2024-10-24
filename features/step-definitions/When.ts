import { When } from "@cucumber/cucumber";
import test from "../../locators.json";
import {Selector} from 'webdriverio'
import { time } from "console";
import { text } from "stream/consumers";

When(/^I click on the element "([^"]*)?"$/, async (element:string) => {
    const newButton = test.locators[element];
    console.log(`button is clicked:${newButton}`);
    await $(newButton).isClickable();
    await $(newButton).click();
    
});

When(/^I pause for ([^"]*)?$/, async (time:number) => {
    await browser.pause(time);
})

When(/^I enter the value "([^"]*)?" for the element "([^"]*)?"$/, async (value:string, element:string) => {
    let accName = test.locators[element];
    console.log(`The element is:${accName}`);
    await browser.pause(2000);
    await $(accName).setValue(value);
})

When(/^I scroll to element "([^"]*)?"$/, async (element:string) => {
    let billingAdd = test.locators[element];
    console.log(`I scroll to:${billingAdd}`);
    await $(billingAdd).moveTo();
})

When(/^I wait on element "([^"]*)?" to be (enabled|displayed|exist|clickable)$/, async (selector:string, condition) => {
    const newButton = test.locators[selector];
    console.log(`The button is enabled:${newButton}`);
    
    const element = await $(newButton);
    switch(condition){
        case "enabled":await element.waitForEnabled();
        break;
        case "displayed":await element.waitForDisplayed();
        break;
        case "exist":await element.waitForExist();
        break;
        case "clickable":await element.waitForClickable();
        break;
        default:
            throw new Error(
                "unable to find the selector"
            );
    }
})

When(/^I click on the element "([^"]*)?" and select the option with the text "([^"]*)?"$/, async (selector:string,text:string) => {
    const dropdown = test.locators[selector];
    console.log(`the selector is:${dropdown}`);
    await $(dropdown).click();
    const dropdownElement = await $(`//span[text()='${text}']`);
    await dropdownElement.click();
    // console.log(`the text is:${dropdownElement}`);
})

When(/^I input text "([^"]*)?" for element "([^"]*)?" and select option contains text "([^"]*)?"$/, async (actualtext:string, element:string, text:string) => {
    try{
    const searchaccounts = test.locators[element];
    // await $(searchaccounts).clearValue();
    console.log('inside when');
    await(await $(searchaccounts).click());
    await (await $(searchaccounts).setValue(actualtext));
    await browser.pause(2000);
    console.log(`I search the account with name:${actualtext}`);
    const account = await $(`//label[text()='Parent Account']/..//strong[text()='${text}']`);
    await account.waitForDisplayed();
    await browser.pause(2000);
    await $(account).click();
    }catch(error){
        console.error(`An error accured while selecting the account:${error}`);
        throw error;
    }
});



