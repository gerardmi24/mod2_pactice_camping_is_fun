class SignupsController < ApplicationController
  
  def index
    @signups = Signup.all
  end

  def show
  end

  def new
    @signup = Signup.new
  end

  def create
  end

  def edit
  end

end
