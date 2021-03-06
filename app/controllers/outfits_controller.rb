class OutfitsController < ApplicationController

  def clear
    cookies[:top_id] = nil
    cookies[:bottom_id] = nil
    cookies[:shoe_id] = nil
    cookies[:outerwear_id] = nil
    cookies[:accessory_id] = nil
    redirect_to "/outfits/new"
  end

  def select_top
    @tops = Top.all
    @bottom = Bottom.find_by(:id => cookies[:bottom_id])
    @shoe = Shoe.find_by(:id => cookies[:shoe_id])
    @outerwear = Outerwear.find_by(:id => cookies[:outerwear_id])
    @accessory = Accessory.find_by(:id => cookies[:accessory_id])
  end

  def add_top
    cookies[:top_id] = params[:top_id]
    redirect_to "/outfits/new"
  end

  def select_bottom
    @bottoms = Bottom.all
    @top = Top.find_by(:id => cookies[:top_id])
    @shoe = Shoe.find_by(:id => cookies[:shoe_id])
    @outerwear = Outerwear.find_by(:id => cookies[:outerwear_id])
    @accessory = Accessory.find_by(:id => cookies[:accessory_id])
  end

  def add_bottom
    cookies[:bottom_id] = params[:bottom_id]
    redirect_to "/outfits/new"
  end

  def select_shoe
    @shoes = Shoe.all
    @top = Top.find_by(:id => cookies[:top_id])
    @bottom = Bottom.find_by(:id => cookies[:bottom_id])
    @outerwear = Outerwear.find_by(:id => cookies[:outerwear_id])
    @accessory = Accessory.find_by(:id => cookies[:accessory_id])
  end

  def add_shoe
    cookies[:shoe_id] = params[:shoe_id]
    redirect_to "/outfits/new"
  end

  def select_outerwear
    @outerwears = Outerwear.all
    @top = Top.find_by(:id => cookies[:top_id])
    @bottom = Bottom.find_by(:id => cookies[:bottom_id])
    @shoe = Shoe.find_by(:id => cookies[:shoe_id])
    @accessory = Accessory.find_by(:id => cookies[:accessory_id])
  end

  def add_outerwear
    cookies[:outerwear_id] = params[:outerwear_id]
    redirect_to "/outfits/new"
  end

  def select_accessory
    @accessories = Accessory.all
    @top = Top.find_by(:id => cookies[:top_id])
    @bottom = Bottom.find_by(:id => cookies[:bottom_id])
    @shoe = Shoe.find_by(:id => cookies[:shoe_id])
    @outerwear = Outerwear.find_by(:id => cookies[:outerwear_id])
  end

  def add_accessory
    cookies[:accessory_id] = params[:accessory_id]
    redirect_to "/outfits/new"
  end

  def index
    @outfits = Outfit.all
  end

  def show
    @outfit = Outfit.find(params[:id])
    @top = Top.find_by(:id => cookies[:top_id])
    @bottom = Bottom.find_by(:id => cookies[:bottom_id])
    @shoe = Shoe.find_by(:id => cookies[:shoe_id])
    @outerwear = Outerwear.find_by(:id => cookies[:outerwear_id])
    @accessory = Accessory.find_by(:id => cookies[:accessory_id])

  end

  def new
    @outfit = Outfit.new
    @top = Top.find_by(:id => cookies[:top_id])
    @bottom = Bottom.find_by(:id => cookies[:bottom_id])
    @shoe = Shoe.find_by(:id => cookies[:shoe_id])
    @outerwear = Outerwear.find_by(:id => cookies[:outerwear_id])
    @accessory = Accessory.find_by(:id => cookies[:accessory_id])
  end

  def create
    @outfit = Outfit.new
    @outfit.top_id = params[:top_id]
    @outfit.bottom_id = params[:bottom_id]
    @outfit.outerwear_id = params[:outerwear_id]
    @outfit.shoe_id = params[:shoe_id]
    @outfit.accessory_id = params[:accessory_id]
    @outfit.user_id = params[:user_id]

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
    @outfit.user_id = params[:user_id]

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
