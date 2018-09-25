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

    redirect_to "/articles/#{@article.id}"  
  end
end
