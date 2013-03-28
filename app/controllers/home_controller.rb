class HomeController < ApplicationController
  def index
    @rivers = River.all
  end

  def view
    @river = River.find(params[:id])
    if @river.present?
      render :view
    else
      river_id = RiverSlug.where(slug: params[:id]).first[:river_id]
      redirect_to :view, id: river_id, status: :moved_permanently
    end
  end
end
