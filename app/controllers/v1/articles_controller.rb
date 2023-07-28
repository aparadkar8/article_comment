module V1
  class ArticlesController < ApplicationController
    def index
      articles = Article.all.includes(:comments)
      render json: {
        data: ActiveModelSerializers::SerializableResource.new(articles, each_serializer: ArticleSerializer),
        message: ['All articles list fetched successfully'],
        status: 200,
        type: 'Success'
      }
    end
    def show
      article = Article.find(params[:id])

      render json: {
        data: ActiveModelSerializers::SerializableResource.new(article, serializer: ArticleSerializer),
        message: ['Article fetched successfully'],
        status: 200,
        type: 'Success'
      }
    end
  
  end
end