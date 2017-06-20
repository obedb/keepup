class PostCategory < ApplicationRecord
  belongs_to :posts
  belongs_to :categories
end
