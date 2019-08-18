class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :body
  #has_one :note
end
