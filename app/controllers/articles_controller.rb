class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def new
		 @article = Article.new

	end

	def create

		@article = Article.new(params[:article].permit(:title, :body, :publish_date, :category_id))
		@publish_date = Article.where('publish_date < ?', Date.today).pluck(:publish_date)
		
		if @article.save
			redirect_to articles_path
		else
			render "/articles/new"
		end
 
	end

	def show
		@article = Article.find(params[:id])
		@comment = Comment.new
		@cartlineitem = CartLineItem.new
		
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update

		@article = Article.find(params[:id])
		if @article.update_attributes(article_params)
			redirect_to articles_path, notice: "ARticle #{@article.title} Updated Successfully"
		else
			render action: "edit"
		
		end
	end

	def destroy 
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path

	end


	private

	def article_params

		params[:article].permit(:title,:body,:publish_date,:category_id)

	end



end
