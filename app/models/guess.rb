class Guess < ActiveRecord::Base
  belongs_to :game
  
  validates :game, presence: true
  validates :number, presence: true, numericality: true
end
