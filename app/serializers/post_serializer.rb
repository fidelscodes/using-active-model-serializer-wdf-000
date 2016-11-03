class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  # here we have to explicitly let the post know what serializer to user for its author
  # rather than relying on conventioa
  has_one :author, serializer: PostAuthorSerializer
end
