import { Given } from "@wdio/cucumber-framework";



Given(/^I open the site with url "([^"]*)?"$/, async (urlText)=> {
    await browser.url(urlText);
    
    
  });