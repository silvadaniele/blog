class CommentsController < ApplicationController

  def show
  end

  def new
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)

    if @comment.save
      redirect_to article_path(@comment.article_id)
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to article_path(@comment.article_id)
    else
      render "edit"
    end
  end

  def destroy
    @comment.destroy

    redirect_to comment_path
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end
