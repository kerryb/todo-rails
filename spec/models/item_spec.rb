require "rails_helper"

describe Item do
  describe "#to_partial_path" do
    it "returns 'to_do_item' for items which are not done" do
      item = Item.new done: false
      expect(item.to_partial_path).to eq "to_do_item"
    end

    it "returns 'done_item' for items which are done" do
      item = Item.new done: true
      expect(item.to_partial_path).to eq "done_item"
    end
  end

  describe ".mark_done" do
    it "marks the specified item as done" do
      item = Item.create name: "An item"
      Item.mark_done item.id
      expect(item.reload).to be_done
    end
  end

  describe ".remove_done" do
    it "removes all items which are marked as done" do
      to_do_item = Item.create name: "To-do item"
      Item.create name: "Done item", done: true
      Item.remove_done
      expect(Item.all).to eq [to_do_item]
    end
  end
end
