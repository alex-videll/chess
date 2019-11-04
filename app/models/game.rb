class Game < ApplicationRecord
  belongs_to :result
  has_many :players
  belongs_to :user
end
