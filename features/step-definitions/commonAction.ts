import { expect } from "chai";
import { reverse } from "dns";
class commonAction {
  async checkIsDisplayed(ele, falseCase) {
    const isDisplayed = $(ele).isDisplayed();
    if (falseCase) {
      expect(isDisplayed).not.toEqual(true, `${ele} is displayed`);
    } else {
      expect(isDisplayed).to.equal(true, `${ele} is not displayed`);
    }
  }

  async checkIsNotDisplayed(spinner:string, falseCase:boolean) {
    console.log(`Spinner Selector: ${spinner}`); // Ensure selector is valid
    
   if (falseCase) {
        // Reverse the wait condition for element NOT displayed
        // console.log('Waiting for element to not be displayed...');
        await $(spinner).waitForDisplayed({reverse:true});
        // expect(isNotDisplayed).toBeFalsy(`${spinner} is still loading `);
        console.log(`${spinner}:Element is not displayed`);
        
    } else {
        // Check if the element is displayed
        // console.log('Waiting for element to be displayed...');
         await $(spinner).waitForDisplayed();
        // expect(isDisplayed).toBeTruthy(true,`${spinner} is still not loaded`);
        console.log(`${spinner} is displayed`);
    }
}

}

export default new commonAction();
