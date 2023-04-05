class HeroheroSerializer < ActiveModel::Serializer
  #attributes for rendering
  attributes :id, :name, :super_name, :gender
  has_many :powers
end