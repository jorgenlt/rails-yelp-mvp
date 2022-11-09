class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: %w[chinese, italian, japanese, french, belgian],
                                    messsage: '%{value} is not a valid category.'}
end
