class CampersController < ApplicationController

  before_action :find_campers, only: [:show]
 
  def index
    @campers = Camper.all
  end

  def show
  end

  def new
    @camper = Camper.new
  end

  def create
    @camper = Camper.create(camper_params)
        redirect_to camper_path(@camper)
  end

  def edit
  end

  private 

  def camper_params
      params.require(:camper).permit(:name, :age)
  end

  def find_campers
      @camper = Camper.find(params[:id])
  end 

end

