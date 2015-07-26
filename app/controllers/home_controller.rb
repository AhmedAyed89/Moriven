class HomeController < ApplicationController
  def index
  end

  def about
    @newsletter = Newsletter.new
  end
end
