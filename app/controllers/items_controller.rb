class ItemsController < ApplicationController
  def index
    @items = Item.all.order("updated_at desc")
    render :index
  end

  def show
    @item = Item.find_by(id: params["id"])
    render :show
  end

  def create
    @item = Item.new(
      user_id: current_user.id,
      name: params[:name],
      description: params[:description],
      size: params[:size],
      image: params[:image],
      condition: params[:condition],
      retail_price: params[:retail_price],
      selling_price: params[:selling_price],
    )
    if @item.save
      render json: { message: "Item successfully created!" }, status: :created
    else
      render json: { errors: @item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @item = Item.find_by(id: params["id"])
    @item.update(
      name: params["name"] || @item.name,
      description: params["description"] || @item.description,
      size: params["size"] || @item.size,
      image: params["image"] || @item.image,
      condition: params["condition"] || @item.condition,
      retail_price: params["retail_price"] || @item.retail_price,
      selling_price: params["selling_price"] || @item.selling_price,
    )
    render :show
  end

  def destroy
    item = Item.find_by(id: params["id"])
    item.destroy
    render json: { message: "Item successfully deleted" }
  end
end
