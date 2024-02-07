class UsersLovedItemsController < ApplicationController
  def create
    @users_loved_item = UsersLovedItem.new(
      item_id: params[:item_id],
      user_id: params[:user_id],
    )
    if @users_loved_item.save
      render json: { message: "Item Loved <3" }, status: :created
    else
      render json: { errors: @users_loved_item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    @users_loved_items = UsersLovedItem.all
    render :index
  end

  def show
    @users_loved_items = UsersLovedItem.where(user_id: params[:user_id])
    render :show
  end

  def destroy
    users_loved_item = UsersLovedItem.find_by(id: params["id"])
    users_loved_item.destroy
    render json: { message: "Unloved" }
  end
end
