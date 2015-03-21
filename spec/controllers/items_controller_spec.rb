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
    before do
      allow(Item).to receive :create
    end

    def do_create
      post :create, item: {name: "do it!"}
    end

    it "creates a new item" do
      do_create
      expect(Item).to have_received(:create).with name: "do it!"
    end

    it "redirects to the index" do
      do_create
      expect(response).to redirect_to action: :index
    end
  end
end
