class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = Comment.new(chirp_id: params[:chirp_id], 
                    content: params[:content])

    if @comment.save
      flash[:success] = "Comment Added"
      redirect_to "/chirps/#{params[:chirp_id]}"
    else
      @chirp = Chirp.find(params[:chirp_id])
      render 'chirps/show'
    end
  end

  def destroy
    Comment.find(params[:comment_id]).destroy
    flash[:success] = "Comment Un-chirped"
    redirect_to "/chirps/#{params[:chirp_id]}"
  end
end
