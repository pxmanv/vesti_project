class FabricsController < ApplicationController
  def index
    @fabrics = Fabric.all
  end

  def show
    @fabric = Fabric.find(params[:id])
  end

  def new
    @fabric = Fabric.new
  end

  def create
    @fabric = Fabric.new
    @fabric.fabric = params[:fabric]

    if @fabric.save
      redirect_to "/fabrics", :notice => "Fabric created successfully."
    else
      render 'new'
    end
  end

  def edit
    @fabric = Fabric.find(params[:id])
  end

  def update
    @fabric = Fabric.find(params[:id])

    @fabric.fabric = params[:fabric]

    if @fabric.save
      redirect_to "/fabrics", :notice => "Fabric updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @fabric = Fabric.find(params[:id])

    @fabric.destroy

    redirect_to "/fabrics", :notice => "Fabric deleted."
  end
end
