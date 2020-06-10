class Like < ApplicationRecord
  belongs_to :user
  belongs_to :manual
  
  validates_uniqueness_of :manual_id, scope: :user_id
end
