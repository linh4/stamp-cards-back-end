class DealSerializer < ActiveModel::Serializer
  attributes :id, :category, :description, :max_points, :store_id, :store

end
