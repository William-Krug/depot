module StoreIndexCounter
  
  private

    def update_index_count
      @index_count = session[:index_counter]

      if session[:index_counter].nil?
        session[:index_counter]= 1
      else
        session[:index_counter] = @index_count + 1
      end
    end
end