class Game < ActiveRecord::Base
  has_many :guesses

  validates :number, presence: true, numericality: true
end
