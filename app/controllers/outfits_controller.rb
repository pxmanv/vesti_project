class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.all
  end

  def show
    @outfit = Outfit.find(params[:id])
  end

  def new
    @outfit = Outfit.new
  end

  def create
    @outfit = Outfit.new
    @outfit.top_id = params[:top_id]
    @outfit.bottom_id = params[:bottom_id]
    @outfit.outerwear_id = params[:outerwear_id]
    @outfit.shoe_id = params[:shoe_id]
    @outfit.accessory_id = params[:accessory_id]

    if @outfit.save
      redirect_to "/outfits", :notice => "Outfit created successfully."
    else
      render 'new'
    end
  end

  def edit
    @outfit = Outfit.find(params[:id])
  end

  def update
    @outfit = Outfit.find(params[:id])

    @outfit.top_id = params[:top_id]
    @outfit.bottom_id = params[:bottom_id]
    @outfit.outerwear_id = params[:outerwear_id]
    @outfit.shoe_id = params[:shoe_id]
    @outfit.accessory_id = params[:accessory_id]

    if @outfit.save
      redirect_to "/outfits", :notice => "Outfit updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @outfit = Outfit.find(params[:id])

    @outfit.destroy

    redirect_to "/outfits", :notice => "Outfit deleted."
  end
end
