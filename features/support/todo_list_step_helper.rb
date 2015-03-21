require "rspec/expectations"

RSpec::Matchers.define :show_todo_item do |item|
  match do |page|
    page.has_css? "li", text: item.name
  end

  failure_message { %(Expected page to contain a list item "#{item.name}") }
end
