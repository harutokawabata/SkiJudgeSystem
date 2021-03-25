class Post < ApplicationRecord
    # has_many :comments, through: :post_comments
    has_many :post_comments
end
