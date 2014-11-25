class DesignersController < ApplicationController
  def index
    @designers = Designer.all
  end

  def show
    @designer = Designer.find(params[:id])
  end

  def new
    @designer = Designer.new
  end

  def create
    @designer = Designer.new
    @designer.designer = params[:designer]

    if @designer.save
      redirect_to "/designers", :notice => "Designer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @designer = Designer.find(params[:id])
  end

  def update
    @designer = Designer.find(params[:id])

    @designer.designer = params[:designer]

    if @designer.save
      redirect_to "/designers", :notice => "Designer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @designer = Designer.find(params[:id])

    @designer.destroy

    redirect_to "/designers", :notice => "Designer deleted."
  end
end
