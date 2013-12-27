class CommentsController < ApplicationController
	def new
		@post = Post.find(params[:post_id])
		@comment = Comment.new

	end

	def create
		@post = Post.find(params[:post_id])
		@comment =Comment.new(comment_param)

		@comment.post_id = @post.id
		@comment.user_id = current_user.id

	  	if @comment.save
	  		redirect_to post_path(@post)
	  	else
	  		render :new
	  	end
	  end
		
  def comment_param
  	params.require(:comment).permit(:content)
  end



end
