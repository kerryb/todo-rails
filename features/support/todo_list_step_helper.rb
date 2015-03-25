require "rspec/expectations"

module TodoListStepHelper
  def add_item name
    fill_in "New item:", with: name
    click_on "Add"

  end

  def click_item item
    click_on item.name
  end

  def remove_done_items
    click_on "Remove done"
  end
end
World TodoListStepHelper

RSpec::Matchers.define :show_todo_item do |item|
  match do |page|
    page.has_css? "li", text: item.name
  end

  failure_message { %(Expected page to contain a list item "#{item.name}") }
end

RSpec::Matchers.define :show_item_as_done do |item|
  match do |page|
    page.has_css? "li.done", text: item.name
  end

  failure_message { %(Expected page to show item "#{item.name}" as done) }
end
