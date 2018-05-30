class MushroomsController < ApplicationController
  def edible

  end
  def index
    if params[:query].present?
      sql_query = "edible ILIKE :query"
      @mushrooms = Mushroom.where(sql_query, query: "%#{params[:query]}%")
    else
      @mushrooms = Mushroom.last(10)
    # @mushrooms = Mushroom.all
    end

  end

  def new
    @mushroom = Mushroom.new
  end

end
