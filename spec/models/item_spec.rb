require "rails_helper"

describe Item do
  describe ".mark_done" do
    it "marks the specified item as done" do
      item = Item.create name: "An item"
      Item.mark_done item.id
      expect(item.reload).to be_done
    end
  end
end
