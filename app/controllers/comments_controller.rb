class CommentsController < ApplicationController
  before_action :load_comment, only: [:show, :edit, :update, :destroy]
  def index
    @comment = Comment.new
    @comments = Comment.all.to_a
    
  end

  def show
    
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new comment_params

    if @comment.save
      flash[:success] = t "comments.create_success"
      redirect_to comments_url
    else
      flash[:error] = t "comments.create_error"
      redirect_to :back
    end
  end

  def edit
  end

  def update
    if @comment.update_attributes comment_params
      flash[:success] = t "comments.update_success"
      redirect_to @comment
    else
      flash[:error] = t "comments.update_error"
      render :edit
    end
  end

  def destroy
    if @comment.destroy
      flash[:success] = t "comments.destroy_success"
    else
      flash[:error] = t "comments.destroy_error"
    end
    redirect_to comments_path
  end

  private
  def comment_params
    params.require(:comment).permit :name, :text, :link, :link_image, :link_video, :image, :video
  end

  def load_comment
    @comment = Comment.find params[:id]
  end
end
