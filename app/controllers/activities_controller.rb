class ActivitiesController < ApplicationController

  before_action :find_activity, only: [:show]
 
  def index
    @activities = Activity.all
  end

  def show
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.create(activity_params)
    redirect_to activity_path(@activity)
  end

  def edit
  end

  private 

  def activity_params
      params.require(:activity).permit(:name, :difficulty)
  end

  def find_activity
      @activity = Activity.find(params[:id])
  end 

end

