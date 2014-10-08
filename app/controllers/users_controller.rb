class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :follow, :unfollow]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Sign up successful."
      redirect_to @user
    else
      flash[:notice] = "Something went wrong."
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "Profile updated"
      redirect_to @user
    else
      flash[:alert] = "Something went wrong"
      render :edit
  end

  def destroy
    if @user.destroy
      flash[:notice] = "Account deleted."
      redirect_to users_path
    else
      flash[:alert] = "Something went wrong"
      redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:fname, :email, :password, :location, :lname, :username, :bio)
  end

  def set_user
      @user = User.find(params[:id])
  end
end
