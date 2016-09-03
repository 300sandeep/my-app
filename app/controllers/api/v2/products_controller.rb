module Api
  module V2 
   class ProductsController < ApplicationController
    #http_basic_authenticate_with name: "sandeep", password: "secret"
    before_filter :restrict_access
   	 #  class Product < ::Product
   	 #  	# def as_json(options={})
   	 #  	# 	binding.pry
   	 #  	# 	super.merge!(released_on: released_at.to_date)
   	 #  	# end
   	 # end 	
	   def index
		   
		 @product =  Product.all
		 render json: @product
	        end	

     private     
	   def restrict_access
      # api_key = ApiKey.find_by_access_token(params[:access_token])
      # head :unauthorized unless api_key
      authenticate_or_request_with_http_token do |token,options|
        binding.pry
        ApiKey.exists?(access_token: token)
      end
     end

   end
  end
end