class ImageSerializer < ActiveModel::Serializer
  attributes :id, :link

  belongs_to :product


end
