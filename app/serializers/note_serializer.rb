class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :noteText #, :picture #, :coordinates
  has_many :comments
end
