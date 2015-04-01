class PostsController < ApplicationController
  # Get /posts
  def index
  	@posts = Post.all
  end

  # Get /posts/:id
  def show
  	@post = Post.find(params[:id])
  end

  def new

  end

  def edit
  end

  def create
  	# @post = Post.new title: params[:title],
  					 # content: params[:content]

  	@post = Post.new params[:post].to_h  #直接初始化
  	if @post.save
  		redirect_to @post
  		# 等於 post_path(@post)
  	else
  		render :new
  		#會渲染 app/views/posts/new
  	end
  end

  private
  def post_params
  	params.require(:post).permit(:title, :content)
  end



end
