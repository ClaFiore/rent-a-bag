class Handbag < ApplicationRecord
    belongs_to :lister, class_name: 'User', foreign_key: :lister_id
    has_many :user_handbags
    has_many :users, through: :user_handbags
end


