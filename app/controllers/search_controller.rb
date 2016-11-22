class SearchController < ApplicationController
  def index
  end

  def live_search
    @searchphrase - "%" + params[:query] + "%"
    @results = Concert.where("title LIKE :query", query: "#{@searchphrase}%")
    render(:layout => false)
  end
end