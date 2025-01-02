import { Given } from "@wdio/cucumber-framework";

Given(/^I open the site "([^"]*)?"$/, async (urlText) => {
  const baseUrl = process.env.BASE_URL;
  const fullUrl = `${baseUrl}/${urlText}`;
  console.log(`This is the fullurl:${fullUrl}`);
  await browser.url(fullUrl);
});

Given(/^I open the site with url "([^"]*)?"$/, async (url:string) => {
  await browser.url(url);
})


