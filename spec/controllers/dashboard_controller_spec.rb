require "rails_helper"

RSpec.describe DashboardController, type: :controller do
  #include_context :gon

#  describe "#dashbord_analytics" do
#    #let(:gon) { RequestStore.store[:gon].gon }
#    it "renders the dashbord_analytics template" do
#      get :dashbord_analytics
#      expect(response).to render_template(:dashbord_analytics)
#    end
#
#    it "has a 200 status code" do
#      get :dashbord_analytics
#      expect(response.status).to eq(200)
#    end
#
#
##  def dashbord_analytics
##    @good_analytics = Search.where(
##      submitted: true).group(:term).order('count_term desc').count(:term)
##    @bad_analytics = Search.where(
##      submitted: false).group(:term).order('count_term desc').count(:term)
##  end
#  end
#
#  describe "#clear_search_analytics" do
#    #it "should response with Mime::JS e status code 200" do
#    #  xhr :get, :destroy_judicial_part, id: judicial_process.judicial_parts.last.id
#    #  expect(response.content_type).to eq Mime::JS
#    #  expect(response.code).to eq "200"
#    #end
#  end

end
