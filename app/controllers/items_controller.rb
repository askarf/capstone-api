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
    if params[:url1].blank?
      render json: { errors: ["At least one image is required."] }, status: :unprocessable_entity
      return
    end

    @item = Item.create(
      user_id: current_user.id,
      name: params[:name],
      description: params[:description],
      size: params[:size],
      condition: params[:condition],
      retail_price: params[:retail_price],
      selling_price: params[:selling_price],
    )

    (1..5).each do |i|
      if params["url#{i}"].present?
        @item.images.build(url: params["url#{i}"])
      end
    end

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
