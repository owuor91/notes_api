class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :noteText #, :picture #, :coordinates
end
