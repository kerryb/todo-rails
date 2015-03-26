Given "I have some items in my to-do list" do
  @item_1 = Item.create name: "Make a Rails app"
  @item_2 = Item.create name: "Demonstrate test-driven development"
end

When "some of the items are done" do
  Item.mark_done @item_1.id
end

When "I go to the home page" do
  visit root_path
end

When "I add a to-do item" do
  visit root_path
  @new_item_name = "Make this test pass"
  add_item @new_item_name
end

When "I click on an item" do
  visit root_path
  click_item @item_1
end

When "I remove done items" do
  visit root_path
  remove_done_items
end

Then "I can see all the items" do
  expect(page).to show_todo_item @item_1
  expect(page).to show_todo_item @item_2
end

Then "it appears in the list" do
  expect(page).to show_todo_item Item.new(name: @new_item_name)
end

Then "it is marked as done" do
  expect(page).to show_item_as_done @item_1
end

Then "only the to-do items are left behind" do
  expect(page).not_to show_todo_item @item_1
  expect(page).to show_todo_item @item_2
end
