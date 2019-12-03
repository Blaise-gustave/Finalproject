class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]


  def index
    @posts = Post.all.page(params[:page])
  end


  def show
    @comments = Comment.where(post_id: @post)
  end


  def new
    @post = Post.new
  end


  def edit
  end


  def create
    @post = Post.new(post_params)


      if @post.save
        redirect_to posts_path, notice: 'Post was successfully created.'
      else
       render :new


    end
  end


  def update

      if @post.update(post_params)
         redirect_to posts_path, notice: 'Post was successfully updated.' 

      else
        render :edit


    end
  end


  def destroy
    @post.destroy
      redirect_to posts_url, notice: 'Post was successfully destroyed.'
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:company_name, :post, :user_id, :ranking)
    end
end
