class ImagesController < ApplicationController
  def create
    @image = Image.new(
      user_id: current_user.id,
      url: params[:url],
    )
  end

  def index
    @images = Image.all
    render :index
  end

  def show
    @image = Image.find_by(id: params["id"])
    render :show
  end

  def update
    @image = Image.find_by(id: params["id"])
    @image.update(
      url: params["url"] || @image.url,
    )
    render :show
  end

  def destroy
    image = Image.find_by(id: params["id"])
    image.destroy
    render json: { message: "Image successfully deleted" }
  end
end
