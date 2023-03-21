class OneRestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address
  has_many :pitzzas
end
