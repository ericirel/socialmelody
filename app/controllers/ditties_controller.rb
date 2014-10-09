class DittiesController < ApplicationController
    before_action :set_ditty, only: [:show, :edit, :update, :destroy]
  def index
    @ditties = Ditty.all
  end

  def show
    @ditty = Ditty.find(params[:id])
  end

  def new
    @ditty = Ditty.new
  end

  def create
    @ditty = Ditty.new(ditties_params)
    if @ditty.save
      flash[:notice] = "New ditty posted"
      redirect_to @ditty
    else
      flash[:notice] = "Something went wrong."
      render :new
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

  private 

  def ditties_params
      params.require(:ditty).permit(:body, :player)
  end


  def set_ditty
    @ditty = Ditty.find(params[:id])
  end


end



