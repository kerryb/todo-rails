require "rails_helper"

describe ItemsController do
  describe "GET index" do
    let(:items) { [double(:item)] }

    before do
      allow(Item).to receive(:all) { items }
    end

    it "assigns all the items for the view" do
      get :index
      expect(assigns[:items]).to eq items
    end
  end
end
