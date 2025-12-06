class GroceryItem < ApplicationRecord
  validates :name, presence: true

  after_initialize :set_default_availability, if: :new_record?

  private

  def set_default_availability
    self.is_available = true if is_available.nil?
  end
end
