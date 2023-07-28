module V1
  class CommentsController < ApplicationController

    def index
      comments = Comments.all.includes(:article)  
      
      render json: {
        data: ActiveModelSerializers::SerializableResource.new(comments, each_serializer: EmployeeSerializer),
        message: ['All comments list fetched successfully'],
        status: 200,
        type: 'Success'
      }
    end

    def show
      comment = Comment.find(params[:id])

      render json: {
        data: ActiveModelSerializers::SerializableResource.new(comment, serializer: CommentSerializer),
        message: ['Comment fetched successfully'],
        status: 200,
        type: 'Success'
      }
    end

  end
end