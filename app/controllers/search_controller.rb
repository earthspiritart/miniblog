class SearchController < ApplicationController
  def results
    @articles = Article.where(author: params[:author]).page(params[:page]).per(4)
  end
end
