class StoreController < ApplicationController
  include StoreIndexCounter

  before_action :update_index_count, only: [:index]

  def index
    @products = Product.order(:title)
    @current_time = Time.now.strftime("%-d %b, %Y %l:%-M:%-S")
  end
end