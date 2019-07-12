class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :noteText
end
