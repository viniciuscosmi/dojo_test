require 'rspec'
require 'cucumber'
require 'capybara/dsl'
require 'selenium/webdriver'

include Capybara::DSL

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.current_driver = :selenium
Capybara.default_max_wait_time = 30
Capybara.page.driver.browser.manage.window.maximize
