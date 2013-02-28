class HomeController < ApplicationController
  def index
    @rivers = River.all
  end

  def view
    @river = River.find(params[:id])
  end
end
