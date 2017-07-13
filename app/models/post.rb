class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :post_categories
  has_many :categories, through: :post_categories
  belongs_to :user
  def category_tokens=(ids)
    self.category_ids = ids 
  end
end
