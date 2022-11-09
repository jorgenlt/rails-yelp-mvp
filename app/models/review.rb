class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, presence: true
  # validates :rating, inclusion: { in: [1, 2, 3, 4, 5],
  #                                 messsage: 'Please choose a rating between 1 and 5.' }
  validates :rating, format: { with: /[1-5]/,
                               message: 'Rating must be an integer between 1 and 5..' }
end
