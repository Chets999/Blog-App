class CommentsController < ApplicationController

def create
@comment = Comment.new(comments_params)
@comment.user_id = current_user.id
	if @comment.save
		redirect_to article_path(@comment.article_id)
	end
end



private

   def comments_params
	params[:comment].permit(:title,:body,:article_id)
	end

end
