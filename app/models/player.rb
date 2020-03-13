class Player < ApplicationRecord
  has_many :manuals
  belongs_to :club
end
