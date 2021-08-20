class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @current_time = Time.now.strftime("%-d %b, %Y %l:%-M:%-S")
  end
end