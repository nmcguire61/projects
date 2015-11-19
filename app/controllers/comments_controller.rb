class CommentsController < ApplicationController
  before_action :authenticate_user!

  load_and_authorize_resource

  def index
    @comments = Comment.hash_tree
  end

  def show
  end

  def edit
  end

  def new
    @comment = Comment.new(parent_id: params[:parent_id])
  end

  def create
    if params[:comment][:parent_id].to_i > 0
      parent = Comment.find_by_id(params[:comment].delete(:parent_id))
      @comment = parent.children.build(comment_params)
    else
      @comment = Comment.new(comment_params)
      user_id = current_user
    end

    if @comment.save
      flash[:success] = 'Your comment was successfully added!'
      redirect_to root_url
    else
      render 'new'
    end
  end
    

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    set_comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:user_id, :photo_id, :comment_field)
  end

end