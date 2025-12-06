require "test_helper"

class GroceryItemTest < ActiveSupport::TestCase
  test "name must be present" do
    item = GroceryItem.new(price: 10.5, is_available: true)
    assert_not item.valid?
    assert_includes item.errors[:name], "can't be blank"
  end

  test "is_available default is true" do
    item = GroceryItem.new(name: "Milk", price: 40)
    assert_equal true, item.is_available
  end

  test "fixture records load correctly" do
    milk = grocery_items(:milk)
    assert_equal "Milk", milk.name
    assert_equal true, milk.is_available
  end
end
