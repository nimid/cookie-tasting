# frozen_string_literal: true

Given(/^user provides valid login information$/) do
  @user_email = ENV['user_email']
  @user_password = ENV['user_password']
end

When(/^user login$/) do
  driver = Selenium::WebDriver.for :chrome

  driver.get 'https://cookiewow.com'
  popup_image = "//img[@alt='popup-close-button']"
  wait = Selenium::WebDriver::Wait.new(timeout: 10)
  wait.until { driver.find_element(xpath: popup_image).displayed? }
  driver.find_element(xpath: popup_image).click if driver.find_element(xpath: popup_image).displayed?

  driver.get(driver.find_element(:link, 'เข้าสู่ระบบ').attribute('href'))
  wait = Selenium::WebDriver::Wait.new(timeout: 10)
  wait.until { driver.find_element(id: 'user_email').displayed? }

  driver.find_element(id: 'user_email').send_keys @user_email
  driver.find_element(id: 'user_password').send_keys @user_password
  driver.find_element(name: 'commit').click
  button = '//button[text()="รับทราบ"]'
  driver.find_element(:xpath, button).click unless driver.find_elements(:xpath, button).empty?

  wait = Selenium::WebDriver::Wait.new(timeout: 10)
  wait.until { driver.title.start_with? 'จัดการแบนเนอร์คุกกี้ | Cookie Wow' }
  @page_title = driver.title
end

Then(/^the home page should be displayed$/) do
  expect(@page_title).to eq('จัดการแบนเนอร์คุกกี้ | Cookie Wow')
end
