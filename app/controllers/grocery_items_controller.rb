class GroceryItemsController < ApplicationController
  # 1) Show empty form
  def new
    # Create a new (empty) object in memory
    @grocery_item = GroceryItem.new
  end

  # 2) Receive form submit and save
  def create
    # params[:grocery_item] is a hash with the form fields
    @grocery_item = GroceryItem.new(grocery_item_params)

    if @grocery_item.save
      # On success, you can redirect or render
      redirect_to new_grocery_item_path, notice: "Grocery item created!"
    else
      # If validations fail, show the form again
      render :new, status: :unprocessable_entity
    end
  end

  private

  # Strong parameters: allow only specific keys from params
  def grocery_item_params
    params.require(:grocery_item).permit(:name, :price, :description, :is_available)
  end
end
