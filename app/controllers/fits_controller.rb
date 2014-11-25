class FitsController < ApplicationController
  def index
    @fits = Fit.all
  end

  def show
    @fit = Fit.find(params[:id])
  end

  def new
    @fit = Fit.new
  end

  def create
    @fit = Fit.new
    @fit.fit = params[:fit]

    if @fit.save
      redirect_to "/fits", :notice => "Fit created successfully."
    else
      render 'new'
    end
  end

  def edit
    @fit = Fit.find(params[:id])
  end

  def update
    @fit = Fit.find(params[:id])

    @fit.fit = params[:fit]

    if @fit.save
      redirect_to "/fits", :notice => "Fit updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @fit = Fit.find(params[:id])

    @fit.destroy

    redirect_to "/fits", :notice => "Fit deleted."
  end
end
