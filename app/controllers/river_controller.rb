class RiverController < ApplicationController

  def index
    @river = River.find(params[:id])
  end

end
