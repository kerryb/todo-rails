require "rspec/expectations"

module TodoListStepHelper
  def add_item name
    fill_in "New item:", with: name
    click_on "Add"

  end

  def click_item item
    click_on item.name
  end
end
World TodoListStepHelper

RSpec::Matchers.define :show_todo_item do |item|
  match do |page|
    page.has_css? "li", text: item.name
  end

  failure_message { %(Expected page to contain a list item "#{item.name}") }
end
