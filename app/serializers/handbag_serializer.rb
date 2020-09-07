class HandbagSerializer < ActiveModel::Serializer
  attributes :id, :designer, :bag_type, :color, :fabric, :price, :image, :lister_id
  belongs_to :lister, class_name: 'User', foreign_key: :lister_id
  has_many :user_handbags
  has_many :users, through: :user_handbags
end
