class ArticlesController < ApplicationController
  def new

  end

  def index
      @articles = Article.all
    	@article = Article.find(1)
  end

  def create
    @articles = Article.all
    @article = Article.find(1)
    @article = Article.new(article_params)
    if @article.valid?
      @article.save
      redirect_to @article
    else
      render action: 'new'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
  end
