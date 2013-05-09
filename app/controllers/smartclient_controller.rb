class SmartclientController < ApplicationController         
    def index
      
    end
    
    def fetch
      # get all supplyitems from the database
      @supplyItems = Supplyitem.find(:all)
      # get the count of the supplyitems
      supplyitems_count =  Supplyitem.count
      response = DSResponse.new
      response.data = @supplyItems
      response.startRow = 0
      response.endRow = supplyitems_count - 1
      response.status = 0
      response.totalRow = supplyitems_count      
            
      @result = { :response => response }
      
      render json: @result
    end
end
 