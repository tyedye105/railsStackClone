class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  validates :solution, :presence => true
end
