require "rails_helper"

RSpec.describe SearchesController do

  describe "#home" do
    include_context :gon

    it "renders the home template" do
      get :home
      expect(response).to render_template(:home)
    end

    it "has a 200 status code" do
      get :home
      expect(response.status).to eq(200)
    end

    it "should assign new instance of search" do
      get :home
      expect(assigns(:search)).to be_a_new(Search)
    end

    it "set gon.save_incomplete_searches_url" do
      get :home
      expect(gon['save_incomplete_searches_url']).to eq save_incomplete_searches_path
    end
  end


  describe "#search_submitted" do
    let(:sample_search) { build(:search, :submitted) }

    it "should assign create and save a instance of submitted search" do
      post :search_submitted, params: { search: sample_search.attributes }

      result = Search.all.count
      expect(result).to eq 1
    end

    it "the search saved instance should have submitted TRUE" do
      post :search_submitted, params: { search: sample_search.attributes }

      result = Search.first
      expect(result.submitted).to eq true
    end
  end

  describe "#save_incomplete_searches" do
    let(:sample_search) { build(:search, :submitted) }

    it "should assign create and save a instance of incomplete search" do
      get :save_incomplete_searches, params: { term: Faker::Lorem.sentence }

      result = Search.all.count
      expect(result).to eq 1
    end

    it "the search saved instance should have submitted FALSE" do
      get :save_incomplete_searches, params: { term: Faker::Lorem.sentence }

      result = Search.first
      expect(result.submitted).to eq false
    end
  end
end
