class HomeController < ApplicationController
  def index
    @portfolios = Portfolio.first(3)
    @teams = Team.all
    @articles = Article.limit(4)
  end

  def about
    @newsletter = Newsletter.new
    @teams = Team.all
  end
end
