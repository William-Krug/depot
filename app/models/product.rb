class Product < ApplicationRecord
  # Fields must be present
  validates :title, :description, :image_url, presence: true

  # Title must be unique
  validates :title, uniqueness: true

  # URL must end in .gif, .jpg, or .png
  validates :image_url, allow_blank: true, format: {
    with:    %r{\.(gif|jpg|png)\z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }

  # Price must be at least $0.01
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end