module Api
  module V1
   class ProductsController < ApplicationController
   	  class Product < ::Product
   	  	def as_json(options={})
   	  		super.merge!(released_on: released_at.to_date)
   	  	end
   	 end 	
	    def index
		   
		 @product =  Product.all
		 render json: @product
	        end	
	   
   end
  end
end