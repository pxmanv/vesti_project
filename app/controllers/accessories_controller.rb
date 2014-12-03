class AccessoriesController < ApplicationController
  def index
    @accessories = Accessory.all
  end

  def show
    @accessory = Accessory.find(params[:id])
  end

  def new
    @accessory = Accessory.new
  end

  def create
    @accessory = Accessory.new
    @accessory.name_id = params[:name_id]
    @accessory.designer_id = params[:designer_id]
    @accessory.season_id = params[:season_id]
    @accessory.fit_id = params[:fit_id]
    @accessory.color_id = params[:color_id]
    @accessory.fabric_id = params[:fabric_id]
    @accessory.occasion_id = params[:occasion_id]
    @accessory.image_url = params[:image_url]

    if @accessory.save
      redirect_to "/accessories", :notice => "Accessory created successfully."
    else
      render 'new'
    end
  end

  def edit
    @accessory = Accessory.find(params[:id])
  end

  def update
    @accessory = Accessory.find(params[:id])

    @accessory.name_id = params[:name_id]
    @accessory.designer_id = params[:designer_id]
    @accessory.season_id = params[:season_id]
    @accessory.fit_id = params[:fit_id]
    @accessory.color_id = params[:color_id]
    @accessory.fabric_id = params[:fabric_id]
    @accessory.occasion_id = params[:occasion_id]
    @accessory.image_url = params[:image_url]

    if @accessory.save
      redirect_to "/accessories", :notice => "Accessory updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @accessory = Accessory.find(params[:id])

    @accessory.destroy

    redirect_to "/accessories", :notice => "Accessory deleted."
  end
end
