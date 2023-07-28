module V1
  class ArticleSerializer < ActiveModel::Serializer
    attributes :id, :title, :body, :comments

    def comments
      object.comments.map do |cmt|
      {
        id: cmt.id,
        commenter: cmt.commenter,
        body: cmt.body
      }
      end

    end
  end
end
