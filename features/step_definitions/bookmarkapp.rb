Before do |scenario|
  # The +scenario+ argument is optional, but if you use it, you can get the title,
  # description, or name (title + description) of the scenario that is about to be
  # executed.
  Rails.logger.debug "Starting scenario: #name"
end

AfterStep do |scenario|
  # Do something after each step.
 Rails.logger.debug "Done step"
end

Around('@fast') do |scenario, block|
  Timeout.timeout(0.5) do
    block.call
  end
end

After do |scenario|
  # Do something after each scenario.
  # The +scenario+ argument is optional, but
  # if you use it, you can inspect status with
  # the #failed?, #passed? and #exception methods.

  if scenario.failed?
Rails.logger.debug "ending scenario: #name"
  else
Rails.logger.debug "ending scenario: #name"
  end
end

Given(/^I am on the home page$/) do
  visit '/'
end

Then(/^I should see "([^"]*)"$/) do |text|
  page.has_content? text
end
