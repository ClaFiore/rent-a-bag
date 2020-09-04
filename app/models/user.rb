class User < ApplicationRecord
    has_many :handbags, as: :listed_bags, foreign_key: :lister_id, class_name: 'Handbags', dependent: :destroy
    has_many :user_handbags
    has_many :handbags, through: :user_handbags, as: :rented_bags
end
