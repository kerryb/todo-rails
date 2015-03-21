Given "I have some items in my to-do list" do
  @item_1 = Item.create name: "Make a Rails app"
  @item_2 = Item.create name: "Demonstrate test-driven development"
end

When "I go to the home page" do
  visit root_path
end

Then "I can see all the items" do
  expect(page).to have_css "ul li", text: @item_1.name
  expect(page).to have_css "ul li", text: @item_2.name
end
