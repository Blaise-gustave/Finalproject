class Post < ApplicationRecord
  belongs_to :user
  paginates_per 3
  has_many :comments, dependent: :destroy
  validates :post, presence: true
  validates :ranking, presence: true
  validates :company_name, presence: true
end
