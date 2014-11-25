class SeasonsController < ApplicationController
  def index
    @seasons = Season.all
  end

  def show
    @season = Season.find(params[:id])
  end

  def new
    @season = Season.new
  end

  def create
    @season = Season.new
    @season.season = params[:season]

    if @season.save
      redirect_to "/seasons", :notice => "Season created successfully."
    else
      render 'new'
    end
  end

  def edit
    @season = Season.find(params[:id])
  end

  def update
    @season = Season.find(params[:id])

    @season.season = params[:season]

    if @season.save
      redirect_to "/seasons", :notice => "Season updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @season = Season.find(params[:id])

    @season.destroy

    redirect_to "/seasons", :notice => "Season deleted."
  end
end
