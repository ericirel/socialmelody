class DittiesController < ApplicationController
  def index
    @ditties = Ditty.all
  end

  def show
  end

  def new
    @ditty = Ditty.new
  end

  def create
    @ditty = Ditty.new(ditty_params)
    if @ditty.save
      flash[:notice] = "New ditty posted"
      redirect_to @ditty
    else
      flash[:notice] = "Something went wrong."
      redirect_to @ditty
    end
  end

  def edit
  end

  def update
    if @ditty.update(ditties_params)
      flash[:notice] = "Ditty updated"
      redirect_to @ditty
    else
      flash[:alert] = "Something went wrong"
      render :edit
    end
  end

  def destroy
    @ditty.destroy
    flash[:notice] = "Ditty deleted"
    redirect_to users_path
  end
end
