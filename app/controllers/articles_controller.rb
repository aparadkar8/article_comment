class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    render json: @articles
  end

  def show
    @article = Article.find(params[:id])
    render json: @article
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      render json: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    @article.update(article_params) 
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end

end
