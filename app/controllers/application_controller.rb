class ApplicationController < ActionController::Base
  before_action :set_time
  
  def set_time
    @current_time = Time.now.strftime("%-d %b, %Y %l:%-M:%-S")
  end
end
