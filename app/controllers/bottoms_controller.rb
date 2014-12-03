class BottomsController < ApplicationController
  def index
    @bottoms = Bottom.all
  end

  def show
    @bottom = Bottom.find(params[:id])
  end

  def new
    @bottom = Bottom.new
  end

  def create
    @bottom = Bottom.new
    @bottom.name_id = params[:name_id]
    @bottom.designer_id = params[:designer_id]
    @bottom.season_id = params[:season_id]
    @bottom.fit_id = params[:fit_id]
    @bottom.color_id = params[:color_id]
    @bottom.fabric_id = params[:fabric_id]
    @bottom.occasion_id = params[:occasion_id]
    @bottom.image_url = params[:image_url]

    if @bottom.save
      redirect_to "/bottoms", :notice => "Bottom created successfully."
    else
      render 'new'
    end
  end

  def edit
    @bottom = Bottom.find(params[:id])
  end

  def update
    @bottom = Bottom.find(params[:id])

    @bottom.name_id = params[:name_id]
    @bottom.designer_id = params[:designer_id]
    @bottom.season_id = params[:season_id]
    @bottom.fit_id = params[:fit_id]
    @bottom.color_id = params[:color_id]
    @bottom.fabric_id = params[:fabric_id]
    @bottom.occasion_id = params[:occasion_id]
    @bottom.image_url = params[:image_url]

    if @bottom.save
      redirect_to "/bottoms", :notice => "Bottom updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @bottom = Bottom.find(params[:id])

    @bottom.destroy

    redirect_to "/bottoms", :notice => "Bottom deleted."
  end
end
