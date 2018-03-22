class DashboardController < ApplicationController
  #this could be a separated service/app so we could have space for horizontal scale.
  def dashbord_analytics
    @good_analytics = Search.where(
      submitted: true).group(:term).order('count_term desc').count(:term)
    @bad_analytics = Search.where(
      submitted: false).group(:term).order('count_term desc').count(:term)
    #raise Search.where.inspect
  end


  def clear_search_analytics
    Search.destroy_all

    render :dashbord_analytics
  end
end
