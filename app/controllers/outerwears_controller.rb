class OuterwearsController < ApplicationController
  def index
    @outerwears = Outerwear.all
  end

  def show
    @outerwear = Outerwear.find(params[:id])
  end

  def new
    @outerwear = Outerwear.new
  end

  def create
    @outerwear = Outerwear.new
    @outerwear.name_id = params[:name_id]
    @outerwear.designer_id = params[:designer_id]
    @outerwear.season_id = params[:season_id]
    @outerwear.fit_id = params[:fit_id]
    @outerwear.color_id = params[:color_id]
    @outerwear.fabric_id = params[:fabric_id]
    @outerwear.occasion_id = params[:occasion_id]
    @outerwear.image_url = params[:image_url]

    if @outerwear.save
      redirect_to "/outerwears", :notice => "Outerwear created successfully."
    else
      render 'new'
    end
  end

  def edit
    @outerwear = Outerwear.find(params[:id])
  end

  def update
    @outerwear = Outerwear.find(params[:id])

    @outerwear.name_id = params[:name_id]
    @outerwear.designer_id = params[:designer_id]
    @outerwear.season_id = params[:season_id]
    @outerwear.fit_id = params[:fit_id]
    @outerwear.color_id = params[:color_id]
    @outerwear.fabric_id = params[:fabric_id]
    @outerwear.occasion_id = params[:occasion_id]
    @outerwear.image_url = params[:image_url]

    if @outerwear.save
      redirect_to "/outerwears", :notice => "Outerwear updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @outerwear = Outerwear.find(params[:id])

    @outerwear.destroy

    redirect_to "/outerwears", :notice => "Outerwear deleted."
  end
end
