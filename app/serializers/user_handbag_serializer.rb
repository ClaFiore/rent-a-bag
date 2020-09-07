class UserHandbagSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :handbag_id
  belongs_to :user
  belongs_to :handbag
end
