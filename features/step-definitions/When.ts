import { When } from "@cucumber/cucumber";
import test from "../../locators.json";
import { Selector } from "webdriverio";
import { error, time } from "console";
import { text } from "stream/consumers";
import { CLIENT_RENEG_LIMIT } from "tls";
import { createGunzip } from "zlib";
// import { jsClick } from "./jsClick.ts";
import commonAction from "./commonAction";


When(/^I click on the element "([^"]*)?"$/, async (element: string) => {
  const button = test.locators[element];
  const newButton = await $(button);
  await newButton.waitForDisplayed();
  await newButton.click();
});

When(/^I pause for ([^"]*)?$/, async (time: number) => {
  await browser.pause(time);
});

When(
  /^I enter the value "([^"]*)?" for the element "([^"]*)?"$/,
  async (value: string, element: string) => {
    let searchInput = test.locators[element];
    const searchele = await $(searchInput);
    console.log(` searhed field found....`);

    await searchele.waitForDisplayed(); // Ensure the element is visible on the page
    await searchele.setValue(value);
    console.log(`Data entered....`);
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
  /^I wait on element "([^"]*)?" to( not)* be (enabled|displayed|exist|clickable)$/,
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
    const ele = await $(webelement);
    await ele.waitForDisplayed();
    await browser.execute(async (ele) => {
      await document.querySelector(ele).click();
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
  const frame = test.locators[element];
  const frameElement = await $(frame);
  await browser.switchToFrame(frameElement);
});

// When(
//   /^I wait until the element "([^"]*)?" is displayed$/,
//   async (element: string) => {
//     const ele = test.locators[element];
//     await browser.waitUntil(
//       async () => {
//         const element = await $(ele);
//         return element.isDisplayed();
//       },
//       {
//         timeout: 10000,
//         timeoutMsg: "Element in iframe not displayed within 10 seconds",
//       }
//     );
//   }
// );

// When(/^I switch back to the parent frame$/, async () => {
//   await browser.switchToParentFrame();
// });

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
  await edit.waitForClickable();
  await $(edit).doubleclick();
  console.log(`I double click on the element:${edit}`)
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

// When(/^I switch$/, async () => {
//   await browser.pause(10000);

//   console.log(`waited for 20 sec....`);
//   const frameElement = await $(`//iframe[contains(@name,'vfFrameId')]`);
//   await browser.switchToFrame(frameElement);

//   // Locate the search input field
//   const searchInput = await $(
//     `//span[text()='Designation']/ancestor::flowruntime-lwc-body//input[@placeholder]`
//   );
//   // const searchInput = await $(`//div[contains(@class,'flowruntimeBody')]//input[@class='slds-input']`);

//   console.log(` secrhed field found....`);
//   // Wait for the element to be visible
//   // await searchInput.waitForDisplayed({ timeout: 5000 });

//   // Enter text into the search input field
//   await searchInput.setValue("ojas");

//   console.log(`Data entered....`);
// });

When(
  /^I switch to frame and enter the value "([^"]*)" for the element "([^"]*)"$/,
  async (value, selector) => {
    await browser.pause(10000);

    console.log(`waited for 20 sec....`);
    // const iframe = test.locators[frameElement];
    const frame = await $("//iframe[contains(@name,'vfFrameId')]");
    // await frame.waitForDisplayed();
    await browser.switchToFrame(frame);

    // Locate the search input field
    // const searchInput = await $( `//span[text()='Designation']/ancestor::flowruntime-lwc-body//input[@placeholder]`);
    const searchInput = test.locators[selector];
    const searchInputfield = await $(searchInput);
    // const searchInput = await $(`//div[contains(@class,'flowruntimeBody')]//input[@class='slds-input']`);

    console.log(`searhed field found....`);
    // Wait for the element to be visible
    // await searchInput.waitForDisplayed({ timeout: 5000 });

    // Enter text into the search input field
    // await searchInputfield.waitForDisplayed();
    await searchInputfield.setValue(value);
    console.log(`Data entered....`);

    // await browser.pause(3000);
    const checkbox =await $("//input[@class='slds-input']/ancestor::div//lightning-primitive-cell-checkbox");
    await checkbox.click();
    console.log(`${checkbox} is clicked`);

    // await browser.pause(3000);
    const finishbutton =await $("//div//button[@class='slds-button slds-button_brand' and text()='Finish']");
    await finishbutton.click();
    console.log(`${finishbutton} is clicked`);



  }
);

// When(/^I wait on element "([^"]*)?" to ( not)* be displayed$/, async (selector: string, falseCase: boolean) => {
//     const spinnerEle = test.locators[selector];
//     const spinner = await $(spinnerEle);
    
//     await commonAction.checkIsNotDisplayed(spinner, falseCase);
// });

// When(/^I select and click on the element "([^"]*)?"$/, async (selector:string) => {
//   const checkbox = test.locators[selector];
//   const checkboxEle = await $(checkbox);
//   if(await checkboxEle.waitForEnabled() && await checkboxEle.isSelected()){
//    await checkboxEle.click();
//   }

// })

// When(/^I switch and click on the element "([^"]*)?"$/, async (selector:string) => {
//   const frame = await $("//iframe[contains(@name,'vfFrameId')]");
//   await browser.switchToFrame(frame);
//   console.log(`switched to frame...`);
  
//   const checkbox = test.locators[selector];
//   const checkboxele = await $(checkbox);
//   if(await checkboxele.waitForDisplayed() && await checkboxele.waitForClickable()){
//   await checkboxele.click();
//   console.log(`${checkboxele} is clicked`);
//   }

// })

When(/^I switch to frame and add the employees to the Opportunity$/, async () => {
  await browser.pause(10000);
  const frame = await $("//iframe[contains(@name,'vfFrameId')]");
  await browser.switchToFrame(frame);
  console.log(`switched to frame...`);
 
  const searchele = await $("//span[text()='Designation']/ancestor::flowruntime-lwc-body//input[@placeholder]");
  console.log(`search element found...`);
  await searchele.setValue("Trishika");
  console.log(`value entered...`)
  
  await browser.keys("Enter");
 
  const checkboxEle = await $("//input[@class='slds-input']/ancestor::div//lightning-primitive-cell-checkbox");
  await checkboxEle.click();

  const finishbuttonEle = await $("//div//button[@class='slds-button slds-button_brand' and text()='Finish']");
  await finishbuttonEle.click();
});





  




