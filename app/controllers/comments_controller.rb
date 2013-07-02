class CommentsController < ApplicationController

  def create
    @comment = Comment.new(params[:comment])
    @comment.article_id = params[:article_id]
    @comment.save!

    flash.notice = "Your comment has been added #{@comment.author_name}"

    redirect_to article_path(@comment.article_id)
  end
end
