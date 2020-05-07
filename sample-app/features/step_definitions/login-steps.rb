Given(/^I launch http:\/\/the-internet\.herokuapp\.com\/login$/) do
  @LoginPage = LoginPage.new(@browser)
end
And(/^I enter username$/) do
   @LoginPage.enterUsername("tomsmith")
end
And(/^I enter password$/) do
   @LoginPage.enterPassword("SuperSecretPassword!")
end
When(/^I click Login button$/) do
   @LoginPage.clickLoginButton
end
Then(/^I see message success$/) do
    @LoginPage.verifyMessageSuccess
end

And(/^I enter "([^"]*)" and "([^"]*)"$/) do |username, password|
  @LoginPage = LoginPage.new(@browser)
  @LoginPage.enterUsername(username)
  @LoginPage.enterPassword(password)
end
When(/^I click Login$/) do
   @LoginPage.clickLoginButton
end
Then(/^I see message$/) do
    @LoginPage.verifyMessageSuccess
end

Given(/^I enter username and password to login$/) do |table|
  @data = table.hashes
  @LoginPage = LoginPage.new(@browser)
  @LoginPage.enterUsername(@data[0]["username"])
  @LoginPage.enterPassword(@data[0]["password"])
end
When(/^I click Login button to login$/) do
   @LoginPage.clickLoginButton
end
Then(/^I see success notification$/) do
    @LoginPage.verifyMessageSuccess
end
