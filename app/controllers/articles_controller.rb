class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = current_user.articles.new
  end

  def create
    @article = current_user.articles.new(article_params)

    if @article.save
      redirect_to article_path(@article.id)
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @article.update(article_params) == true
      redirect_to article_path(@article.id)
    else
      render "edit"
    end
  end

  def destroy
    @article.destroy

    redirect_to articles_path
  end


  private

  def article_params
    params.require(:article).permit(:title, :author, :keywords, :body)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
