class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post, dependent: :destroy
  belongs_to :post, optional: true 
end
