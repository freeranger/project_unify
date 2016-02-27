require 'coveralls'
Coveralls.wear!
require 'cucumber/rails'
require 'capybara/poltergeist'
require "json_spec/cucumber"

Capybara.javascript_driver = :poltergeist
Capybara.default_max_wait_time = 5

ActionController::Base.allow_rescue = false

DatabaseCleaner.strategy = :truncation

Cucumber::Rails::Database.javascript_strategy = :truncation

# Something is setting request.host to 'example.org', so the step definitions
# need that set too
Before { host! 'example.org' }
