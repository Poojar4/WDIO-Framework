export async function login() {
  // await $("#username").setValue("avinash.r@zucitech.com.ztdev1");
  await $("#username").setValue(process.env.SALESFORCEUSERNAME);
  // await $("#password").setValue("Zucitech@123");
  await $("#password").setValue(process.env.SALESFORCEPASSWORD);
  const loginbutton = await $("#Login");
  await loginbutton.click();
}
