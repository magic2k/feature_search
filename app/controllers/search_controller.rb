class SearchController < ApplicationController

  def index

    if search = find_search_target
      redirect_to search
    else
      @result = Search.for(params[:keyword])
    end
  end

  private
  def find_search_target
    Project.find_by(name: params[:keyword]) ||
    User.find_by(name: params[:keyword])
  end
end