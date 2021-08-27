class StoreController < ApplicationController
  include StoreIndexCounter
  include CurrentCart

  before_action :update_index_count, only: [:index]
  before_action :set_cart

  def index
    @products = Product.order(:title)
  end
end