class CategoriesController < ApplicationController

	def index
		@categories = Category.all
		
	end

	def new
		@category = Category.new
		#puts @category.inspect
	end


	def create

		@category = Category.new(params[:category].permit(:name,:description))
		puts @category.inspect

		if @category.save
			redirect_to categories_path
		else
			render new_category_path
		end

	end

	def show
	@category = Category.find(params[:id])	
	@article = Article.where('category_id = ?', @category.id)	

	if @article.empty?
			redirect_to categories_path, notice:"Record Not FOund"
	end

	end

	

	


end
