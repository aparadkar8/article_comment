module V1
  class CommentSerializer < ActiveModel::Serializer
    attributes :id, :commenter, :body, :article
   
    def article
      {
        id: object.article.id,
        title: object.article.title,
        body: object.article.body
      }
    end
  end
end