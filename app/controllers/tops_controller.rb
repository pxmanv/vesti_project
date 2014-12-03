class TopsController < ApplicationController
  def index
    @tops = Top.all
  end

  def show
    @top = Top.find(params[:id])
  end

  def new
    @top = Top.new
  end

  def create
    @top = Top.new
    @top.name_id = params[:name_id]
    @top.designer_id = params[:designer_id]
    @top.season_id = params[:season_id]
    @top.fit_id = params[:fit_id]
    @top.color_id = params[:color_id]
    @top.fabric_id = params[:fabric_id]
    @top.occasion_id = params[:occasion_id]
    @top.image_url = params[:image_url]

    if @top.save
      redirect_to "/tops", :notice => "Top created successfully."
    else
      render 'new'
    end
  end

  def edit
    @top = Top.find(params[:id])
  end

  def update
    @top = Top.find(params[:id])

    @top.name_id = params[:name_id]
    @top.designer_id = params[:designer_id]
    @top.season_id = params[:season_id]
    @top.fit_id = params[:fit_id]
    @top.color_id = params[:color_id]
    @top.fabric_id = params[:fabric_id]
    @top.occasion_id = params[:occasion_id]
    @top.image_url = params[:image_url]

    if @top.save
      redirect_to "/tops", :notice => "Top updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @top = Top.find(params[:id])

    @top.destroy

    redirect_to "/tops", :notice => "Top deleted."
  end
end
