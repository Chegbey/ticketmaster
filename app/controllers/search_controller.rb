class SearchController < ApplicationController
  def index
  end

  def live_search
    search = "%" + params[:search] + "%"

    @results = Concert.where("lower(title) LIKE ?", search.downcase).order(:title).limit(5)

    render :json => @results
  end
end