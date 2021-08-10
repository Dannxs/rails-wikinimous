class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end
  def create
    @articles = Article.new(articles_params)
    @articles.save
    redirect_to article_path(@articles)
  end
  def new
    @articles = Article.new
  end
  def edit
    #@articles = Article.find(params[:id])
  end
  def show
    #@articles = Article.find(params[:id])
  end
  def update
    #@articles = Article.find(params[:id])
    @articles.update(article_params)
    redirect_to article_path(@articles)
  end
  def destroy
    #@articles = Article.find(params[:id])
    @articles.destroy
    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @articles = Article.find(params[:id])
  end
end
