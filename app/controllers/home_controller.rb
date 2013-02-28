class HomeController < ApplicationController
  def index
    @rivers = River.all
  end
end
