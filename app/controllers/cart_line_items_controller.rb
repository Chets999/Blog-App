class CartLineItemsController < ApplicationController

	def index

	@cartlineitems = current_user.cart_line_items
		

	end


	def create

			@cartlineitem = CartLineItem.new(cart_params)
			@cartlineitem.user_id = current_user.id

			if @cartlineitem.save
				redirect_to cart_line_items_path, notice: "You have added product to cart"
			else
				render :"show"
			end

	end

	def show

	end


private 

def cart_params

params[:cart_line_item].permit(:article_id,:quantity)

end

end
