class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = %w[Chinese Italian Japanese French Belgian]
  validates :category, inclusion: { in: CATEGORIES,
                                    messsage: '%{value} is not a valid category.'}
  validates :name, presence: true
  validates :address, presence: true
end
