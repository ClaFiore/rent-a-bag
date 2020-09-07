class User < ApplicationRecord
    # has_many :handbags, as: :listed_bags
    has_many :listed_bags, foreign_key: :lister_id, class_name: 'Handbag'
    has_many :user_handbags
    has_many :handbags, through: :user_handbags
end
