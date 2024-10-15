export async function login() {
  await browser.pause(5000);
  await $("#username").setValue("avinash.r@zucitech.com.ztdev1");
  // await $("#username").setValue(process.env.SALESFORCEUSERNAME);
  // console.log(`UserName is: ${process.env.SALESFORCEUSERNAME}`);
  await browser.pause(2000);
  await $("#password").setValue("Zucitech@12");
  // await $("#password").setValue(process.env.SALESFORCEUSERNAME);
  // console.log(`Password is: ${process.env.SALESFORCEPASSWORD}`);
  await browser.pause(2000);
  const loginbutton = await $("#Login");
  await loginbutton.click();
}
