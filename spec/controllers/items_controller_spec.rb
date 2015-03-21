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

  describe "POST create" do
    it "redirects to the index" do
      post :create
      expect(response).to redirect_to action: :index
    end
  end
end
