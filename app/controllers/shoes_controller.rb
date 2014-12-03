class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
  end

  def show
    @shoe = Shoe.find(params[:id])
  end

  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = Shoe.new
    @shoe.name_id = params[:name_id]
    @shoe.designer_id = params[:designer_id]
    @shoe.season_id = params[:season_id]
    @shoe.fit_id = params[:fit_id]
    @shoe.color_id = params[:color_id]
    @shoe.fabric_id = params[:fabric_id]
    @shoe.occasion_id = params[:occasion_id]
    @shoe.image_url = params[:image_url]

    if @shoe.save
      redirect_to "/shoes", :notice => "Shoe created successfully."
    else
      render 'new'
    end
  end

  def edit
    @shoe = Shoe.find(params[:id])
  end

  def update
    @shoe = Shoe.find(params[:id])

    @shoe.name_id = params[:name_id]
    @shoe.designer_id = params[:designer_id]
    @shoe.season_id = params[:season_id]
    @shoe.fit_id = params[:fit_id]
    @shoe.color_id = params[:color_id]
    @shoe.fabric_id = params[:fabric_id]
    @shoe.occasion_id = params[:occasion_id]
    @shoe.image_url = params[:image_url]

    if @shoe.save
      redirect_to "/shoes", :notice => "Shoe updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @shoe = Shoe.find(params[:id])

    @shoe.destroy

    redirect_to "/shoes", :notice => "Shoe deleted."
  end
end
