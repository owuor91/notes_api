class NoteSerializer < ActiveModel::VersionSerializer
  version v1 do
    attributes :id, :title, :noteText
  end

  version v2 do
    version_attributes :v1, with: :picture #, :coordinates
  end
end
