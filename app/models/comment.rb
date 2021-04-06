class Comment < ApplicationRecord
    # has_many :posts, through: :post_comments
    has_many :post_comments
end
