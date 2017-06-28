class TacoSerializer < ActiveModel::Serializer
  attributes :id, :name, :meat,:price,:garnish
end
