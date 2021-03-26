class PostComment < ApplicationRecord
    belongs_to :post, optional: true
    belongs_to :comment, optional: true
    #test
end
