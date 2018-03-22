require "rails_helper"

RSpec.describe DashboardController, type: :controller do
  describe "#dashbord_analytics" do
    let!(:sample_search_1) { create(:search, :submitted) }
    let!(:sample_search_2) { create(:search, :incomplete) }

    it "renders the dashbord_analytics template" do
      get :dashbord_analytics
      expect(response).to render_template(:dashbord_analytics)
    end

    it "has a 200 status code" do
      get :dashbord_analytics
      expect(response.status).to eq(200)
    end

    it "it should generate the GOOD analytics list" do
      get :dashbord_analytics
      expect(assigns(:good_analytics).size).to eq(1)
    end

    it "it should generate the BAD analytics list" do
      get :dashbord_analytics
      expect(assigns(:bad_analytics).size).to eq(1)
    end
  end


  describe "#dashbord_analytics" do
    let!(:sample_search_1) { create(:search, :submitted) }
    let!(:sample_search_2) { create(:search, :incomplete) }

    it "should clear all searchs" do
      get :clear_search_analytics
      result = Search.all
      expect(result.size).to eq(0)
    end
  end

end
