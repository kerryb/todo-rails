Given "I have some items in my to-do list" do
  @item_1 = Item.create name: "Make a Rails app"
  @item_2 = Item.create name: "Demonstrate test-driven development"
end

When "I go to the home page" do
  visit root_path
end

When "I add a to-do item" do
  visit root_path
  add_item "Make this test pass"
end

Then "I can see all the items" do
  expect(page).to show_todo_item @item_1
  expect(page).to show_todo_item @item_2
end
