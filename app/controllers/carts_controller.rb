class CartsController < ApplicationController
	  skip_before_filter :verify_authenticity_token
	def index
		@product = Product.all
	end
	def add_session
		if session[:cart_id].blank?
			session[:cart_id] = Hash.new
		end
			session[:cart_id]["cart"+params[:id]] = params[:id]
			render json: session
	end
	
	def delete_session
		session[:cart_id]["cart"+params[:id]]=nil
		
		render text: 'delete'
	end
	
	def display
		
	end
end
