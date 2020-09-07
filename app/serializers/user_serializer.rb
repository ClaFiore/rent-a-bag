class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :address, :balance
  has_many :listed_bags, foreign_key: :lister_id, class_name: 'Handbag'
  has_many :user_handbags
  has_many :handbags, through: :user_handbags
end
