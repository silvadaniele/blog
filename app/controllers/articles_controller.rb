class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new

  end

  def create
    @article = Article.create(
      title: 'Dani',
      keywords: 'dani, manu',
      author: 'manu',
      body: 'some text'
    )

    redirect_to article_path(@article.id)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end
end
