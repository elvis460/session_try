class PaysController < ApplicationController
	def index
		@products = Product.where(id: session[:cart_id].values)
	end
end
