class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find_by(id: params["id"])
    render :show
  end

  def create
    @user = User.new(
      name: params[:name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      image: params["image"],
      about: params["about"],
    )
    if @user.save
      render json: { message: "User successfully created!" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @user = User.find_by(id: params["id"])
    @user.update(
      name: params["name"] || @user.name,
      last_name: params["last_name"] || @user.last_name,
      email: params["email"] || @user.email,
      image: params["image"] || @user.image,
      about: params["about"] || @user.about,
    )
  end

  def destroy
    user = User.find_by(id: params["id"])
    user.destroy
    render json: { message: "User successfully deleted" }
  end
end
