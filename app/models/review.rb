class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5],
                                  messsage: 'Please choose a rating between 0 and 5.' },
                                  numericality: { only_integer: true }

  # validates :rating, format: { with: /[0-5]/,
  #                              message: 'Rating must be an integer between 0 and 5.' }
end
