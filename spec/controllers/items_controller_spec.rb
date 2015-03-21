require "rails_helper"

describe ItemsController do
  describe "GET index" do
    it "assigns all the items for the view" do
      get :index
      expect(assigns[:items]).to eq items
    end
  end
end
