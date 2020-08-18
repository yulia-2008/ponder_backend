class CommentsController < ApplicationController
  def index
    comments = comments.all
     render json: comments
  end

  def update
    comment = Comment.find(params[:id])

    comment.update!(comment_params)

    render json: comment
  end


  def destroy
    comment = Comment.find(params[:id])

    comment.destroy!

    render json: {}
  end

  private

  def comment_params
    params.require(:comment).permit(:park_id, :user_id, :description)
  end
end
