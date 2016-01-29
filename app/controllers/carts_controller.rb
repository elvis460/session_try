class CartsController < ApplicationController
	  skip_before_filter :verify_authenticity_token
	def index

	end
	def add_session

		session[:cart_id] = params[:id]
		render json: session
	end
end
