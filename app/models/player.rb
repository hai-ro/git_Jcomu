class Player < ApplicationRecord
  has_many :manuals
  belongs_to :club
  has_many :users, through: :manuals
  
  
end
