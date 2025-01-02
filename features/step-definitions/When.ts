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
  const newButtonEle = $(newButton);

  await newButtonEle.waitForClickable();
  await newButtonEle.click();
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
  const address = await $(billingAdd);
  await address.waitForExist();
  await address.scrollIntoView();
});

When(
  /^I wait on element "([^"]*)?" to (not )*be (enabled|displayed|exist|clickable)$/,
  async (selector: string, falseCase: Boolean, condition: string) => {
    const newButton = test.locators[selector];
    // console.log(`The button is enabled:${newButton}`);

    const element = await $(newButton);

    if (falseCase) {
      await browser.waitUntil(
        async () => {
          const isDisplayed = await $(element).isDisplayed();
          return !isDisplayed; // Wait until the element is NOT displayed
        },
        {
          timeout: 30000, // Set the timeout in milliseconds
          timeoutMsg: "Element is still displayed after 30 seconds",
        }
      );
    } else {
      switch (condition) {
        case "enabled":
          await element.waitForEnabled();
          break;
        case "displayed":
          await element.waitForDisplayed({ timeout: 60000 });
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

When(
  /^I click on the element "([^"]*)?" using js click$/,
  async (selector: string) => {
    const webelement = test.locators[selector];
    await browser.execute(async (ele) => {
      await document.getElementsByClassName(ele).click();
    }, webelement);
  }
);

When(/^I move to element "([^"]*)?"$/, async (element: string) => {
  const opportunities = test.locators[element];
  const ele = await $(opportunities);
  // for(let i=0;i<=5;i++){
  //   console.log('inside for', i);

  //   if(await ele.isDisplayed({ withinViewport: false })){
  //     console.log('inside if ', i);

  //     await ele.moveTo();
  //   }else{
  //     console.log('inside else ',i);

  //   await browser.scrollIntoView();
  // }
  // }
  await ele.moveTo();
});

// When(/^I press Enter on the element "([^"]*)?"$/, async (element:string) => {
//   const opportunityname = test.locators[element];
//   await opportunityname.addValue('Enter');
// });

When(/^I press "([^"]*)?"$/, async (button: string) => {
  await browser.keys(button);
});

When(
  /^I click on the element with text "([^"]*)?" in the list "([^"]*)?"$/,
  async (text: string, listselector: string) => {
    const elementtext = test.locators[text];
    const list = test.locators[listselector];
    const elements = await $$(list);
    for (const element of elements) {
      const elementText = await element.getText();
      if (elementText.includes(elementtext)) {
        await (await element).click();
        break;
      }
    }
  }
);

When(/^I sroll to element "([^"]*)?"$/, async (element: string) => {
  const ele = test.locators[element];
  const el = await $(ele);
  await el.scrollIntoView();
});
When(/^I scroll up by "([^"]*)?"$/, async (value: number) => {
  await browser.scroll(0, 400);
});

When(/^I switch to iframe "([^"]*)?"$/, async (element: string) => {
  const ele = test.locators[element];
  const iframe = await $(ele);
  if ((await iframe.waitForExist()) && (await iframe.waitForDisplayed())) {
    console.log("I have entered the frame");
    await browser.switchToFrame(iframe);
    console.log("I have switched to iframe");
  } else {
    throw new Error(`element not found for:${iframe}`);
  }
});

When(
  /^I wait until the element "([^"]*)?" is displayed$/,
  async (element: string) => {
    const ele = test.locators[element];
    await browser.waitUntil(
      async () => {
        const element = await $(ele);
        return element.isDisplayed();
      },
      {
        timeout: 10000,
        timeoutMsg: "Element in iframe not displayed within 10 seconds",
      }
    );
  }
);

When(/^I switch back to the parent frame$/, async () => {
  await browser.switchToParentFrame();
});

// When(/^I switch to the iframe with index "([^"]*)?"$/, async (index:string) => {
//   const iframeIndex = parseInt(index);
//   await browser.switchToFrame(iframeIndex);
// })

When(
  /^I select the option with text "([^"]*)" for the element "([^"]*)"$/,
  async (text: string, element: string) => {
    const option = test.locators[element];
    const dropdown = await $(option);
    await dropdown.waitForDisplayed();
    await dropdown.selectByVisibleText(text);
    console.log(`The selected text is:${text}`);
  }
);

When(/^I clear the inputfield "([^"]*)"$/, async (element: string) => {
  const datefield = test.locators[element];
  await $(datefield).waitForEnabled();
  await $(datefield).clearValue();
});

// When(/^I press "([^"]*)"$/, async (key: string) => {
//   await browser.keys(key);
// });

When(
  /^I store the value of "([^"]*)" as "([^"]*)"$/,
  async (selector, mapKey) => {
    const ele = test.locators[selector];
    const elementValue = await $(ele);
    let elementText;
    if (await $(elementValue).getText()) {
      elementText = await $(elementValue).getText();
      global.map.set(mapKey, elementText);
    } else {
      elementText = await $(elementValue).getValue();
      global.map.set(mapKey, elementText);
    }
  }
);
When(
  /^I click on "([^"]*)" and "([^"]*)"$/,
  async (key1: string, key2: string) => {
    await browser.keys(`[${key1},${key2}]`);
    await browser.pause(4000);
  }
);

When(
  /^I click on the "([^"]*)" or "([^"]*)" button$/,
  async (confirmbutton: string, nextbutton: string) => {
    const confirmButton = test.locators[confirmbutton];
    const nextButton = test.locators[nextbutton];

    const confirmButtonElement = await $(confirmButton);
    const nextButtonElement = await $(nextButton);

    if (
      (await confirmButtonElement.isDisplayed()) &&
      (await confirmButtonElement.isClickable())
    ) {
      console.log(`click the confirmbutton`);
      await confirmButtonElement.click();
    } else if (
      (await nextButtonElement.isDisplayed()) &&
      (await nextButtonElement.isClickable())
    ) {
      console.log(`clicking on next button`);
      await nextButtonElement.click();
    } else {
      throw new Error(`element not found`);
    }
  }
);

When(/^I doubleclick on the element "([^"]*)"$/, async (element: string) => {
  const editbutton = test.locators[element];
  const edit = await $(editbutton);
  await $(edit).doubleclick();
});

// When(/^I click on any one element matching "([^"]*)"$/, async (locator) => {
//   const elements = await $$(locator);
//   await elements[0].click();
// });

When(/^I enter a random id for the element "([^"]*)"$/, async (id: string) => {
  const empId = test.locators[id];
  const EmpID = await $(empId);
  const randomString = Math.random() * 100;
  const str = Math.round(randomString);
  let employeeId = `ZT${str}`;
  await EmpID.setValue(employeeId);
});

When(/^I refresh a page$/, async () => {
  await browser.refresh();
});
