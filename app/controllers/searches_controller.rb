class SearchesController < ApplicationController

  def home
    @search = Search.new

    gon.save_incomplete_searches_url = save_incomplete_searches_path
  end

  #this could be a separated service so we could have space for horizontal scale.
  def save_incomplete_searches
    if params[:term].present?
      search = Search.new(term: params[:term].downcase.strip)
      search.save

      #this could be a separated service so we could have space for horizontal scale.
      #this is only a optional return that we could use if this project had real articles,
      #something that could make easier for the user find what he is searching for.
      search_result = ["Just a Sample Article", "Another Sample Article"]
    end

    render json: search_result
  end


  def search_submitted
    if search_params[:term].present?
      search = Search.new(term: search_params[:term].downcase.strip, submitted: true)
      search.save
    end

    redirect_to :back
  end


  #this action could be a separated service so we could have space for horizontal scale.
  def dashbord_analytics
    @good_analytics = Search.where(
      submitted: true).group(:term).order('count_term desc').count(:term)
    @bad_analytics = Search.where(
      submitted: false).group(:term).order('count_term desc').count(:term)
  end


  def clear_search_analytics
    Search.all.destroy_all

    redirect_to :back
  end


  private

    def search_params
      params.require(:search).permit(:term)
    end
end
