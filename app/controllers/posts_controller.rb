class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end
  def show
  	@post = Post.find(params[:id])
      #@comments = Comment.all
      @comments = @post.comments.all
  end


  def new
  	@post = Post.new
  end
  def create
  	@post = current_user.posts.new(post_params)
  	if @post.save
  		redirect_to posts_path
  	else
  		render :new
  	end
  end
  def edit
  	@post = current_user.posts.find(params[:id])
  end
  def update
  	@post = current_user.posts.find(params[:id])
  	if @post.update(post_params)
  		redirect_to posts_path
  	else
  		render :edit
  	end
  end
  def destroy
  	@post = Post.find(params[:id])
  	#@post = current_user.posts.find(params[:id])
  	@post.destroy
  	redirect_to posts_path
  end



  def board
  end

  def help
  end

  def test
    
  end
  
  
  def post_params
  	params.require(:post).permit(:title, :content, :user_id)
  end


end
