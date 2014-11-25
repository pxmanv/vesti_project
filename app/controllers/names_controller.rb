class NamesController < ApplicationController
  def index
    @names = Name.all
  end

  def show
    @name = Name.find(params[:id])
  end

  def new
    @name = Name.new
  end

  def create
    @name = Name.new
    @name.name = params[:name]

    if @name.save
      redirect_to "/names", :notice => "Name created successfully."
    else
      render 'new'
    end
  end

  def edit
    @name = Name.find(params[:id])
  end

  def update
    @name = Name.find(params[:id])

    @name.name = params[:name]

    if @name.save
      redirect_to "/names", :notice => "Name updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @name = Name.find(params[:id])

    @name.destroy

    redirect_to "/names", :notice => "Name deleted."
  end
end
