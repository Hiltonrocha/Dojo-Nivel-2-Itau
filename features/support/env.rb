require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'pry'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'faker'
require 'capybara-screenshot/cucumber'


Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium

Capybara.default_max_wait_time = 15

Capybara.page.driver.browser.manage.window.maximize
