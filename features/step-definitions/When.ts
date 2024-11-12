import { When } from "@cucumber/cucumber";
import test from "../../locators.json";
import { Selector } from "webdriverio";
import { error, time } from "console";
import { text } from "stream/consumers";
import { CLIENT_RENEG_LIMIT } from "tls";
import { createGunzip } from "zlib";
// import { jsClick } from "./jsClick.ts";

When(/^I click on the element "([^"]*)?"$/, async (element: string) => {
  const newButton = test.locators[element];
  console.log('I have entered the block');
  // await $(newButton).waitForClickable();
  console.log(await $(newButton).getText());
  await $(newButton).waitForDisplayed();
  await $(newButton).click();
  // await $(newButton).doubleClick();
});

When(/^I double click on the element "([^"]*)?"$/, async (element: string) => {
  const newButton = test.locators[element];
  console.log('I have entered the block');
  // await $(newButton).waitForClickable();
  // console.log(await $(newButton).getText());
  await $(newButton).waitForDisplayed();
  // await $(newButton).click();
  await $(newButton).doubleClick();
});

When(/^I pause for ([^"]*)?$/, async (time: number) => {
  await browser.pause(time);
});

When(
  /^I enter the value "([^"]*)?" for the element "([^"]*)?"$/,
  async (value: string, element: string) => {
    let accName = test.locators[element];
    await $(accName).setValue(value);
  }
);

When(/^I scroll to element "([^"]*)?"$/, async (element: string) => {
  let billingAdd = test.locators[element];
  console.log(`I scroll to:${billingAdd}`);
  await $(billingAdd).scrollIntoView(false);
});

When(
  /^I wait on element "([^"]*)?" to (not )*be (enabled|displayed|exist|clickable)$/,
  async (selector: string,falseCase:Boolean, condition:string) => {
    const newButton = test.locators[selector];
    // console.log(`The button is enabled:${newButton}`);

    const element = await $(newButton);
    
    if(falseCase){
      await browser.waitUntil(
        async () => {
          const isDisplayed = await $(element).isDisplayed();
          return !isDisplayed; // Wait until the element is NOT displayed
        },
        {
          timeout: 30000, // Set the timeout in milliseconds
          timeoutMsg: 'Element is still displayed after 30 seconds'
        }
      );

    }else{
      switch (condition) {
        case "enabled":
          await element.waitForEnabled();
          break;
        case "displayed":
          await element.waitForDisplayed({timeout:60000});
          break;
        case "exist":
          await element.waitForExist();
          break;
        case "clickable":
          await element.waitForClickable();
          break;
        default:
          throw new Error("unable to find the selector");
      }

    }
  }
);

When(
  /^I click on the element "([^"]*)?" and select the option with the text "([^"]*)?"$/,
  async (selector, text: string) => {
    const dropdown = test.locators[selector];
    // console.log(`the selector is:${dropdown}`);
    await (await $(dropdown)).click();
    // await browser.pause(3000)

    const dropdownElement = await $(`//span[text()='${text}']`);
    await (await dropdownElement).waitForDisplayed();
    await (await dropdownElement).click();
  }
);

When(
  /^I input text "([^"]*)?" for element "([^"]*)?" and select option contains text "([^"]*)?"$/,
  async (actualtext: string, element: string, text: string) => {
    try {
      const searchaccounts = test.locators[element];
      await await $(searchaccounts).setValue(actualtext);
      const account = await $(`//*[text()='${text}']`);
      await account.waitForDisplayed();
      await $(account).click();
    } catch (error) {
      console.log(`An error accured while selecting the account:${error}`);
    }
  }
);

// When(
//   /^I click on the element "([^"]*)?" using js click$/,
//   async (selector: string) => {
//     const webelement = test.locators[selector];
//     console.log(`click the element with selector:${webelement}`);
//     if (!webelement) {
//       throw new Error(`Selector not found for key: ${selector}`);
//   }
//     await browser.execute(async (locator) => {
//       await document.querySelector(locator).click();
//     }, webelement);
//   }
// );

When(/^I move to element "([^"]*)?"$/, async (element: string) => {
  const opportunities = test.locators[element];
  await $(opportunities).moveTo();
});

// When(/^I press Enter on the element "([^"]*)?"$/, async (element:string) => {
//   const opportunityname = test.locators[element];
//   await opportunityname.addValue('Enter');
// });

When(/^I press "([^"]*)?"$/, async (button:string) => {
  await browser.keys(button);
})

When(/^I click on the element with text "([^"]*)?" in the list "([^"]*)?"$/, async (text: string, listselector: string) => {
    const elementtext = test.locators[text];
    const list = test.locators[listselector];
    const elements = await $$(list);
    for (const element of elements) {
      const elementText = await element.getText();
      if (elementText.includes(elementtext)) {
        (await (await element).click());
        break;
      }
    }
  }
);

When(/^I sroll to element "([^"]*)?"$/, async (element:string) => {
 const ele = test.locators[element];
 await $(ele).scrollIntoView();
})

When(/^I switch to iframe "([^"]*)?"$/, async (element:string) => {
  const ele = test.locators[element];
  const iframe = await $(ele);
  console.log(await iframe.getHTML());
  // await iframe.waitForDisplayed();
  // const iframeEle = $("//div[contains(@class,'iframe-parent')]/iframe");
  console.log('I have entered the frame');
  await browser.switchToFrame(iframe);
  console.log('I have switched to iframe');
})

When(/^I wait until the element "([^"]*)?" is displayed$/, async (element:string) => {
  const ele = test.locators[element];
  await browser.waitUntil( async () => {
      const element = await $(ele);
      return element.isDisplayed();
    },
    {
      timeout: 30000, // Adjust the timeout as needed
      timeoutMsg: `Element "${ele}" was not displayed within the timeout`,
    }
  )
})

When(/^I switch back to the parent frame$/, async () => {
  await browser.switchToParentFrame();
})

When(/^I switch to the iframe with index "([^"]*)?"$/, async (index:string) => {
  const iframeIndex = parseInt(index);
  await browser.switchToFrame(iframeIndex);
})