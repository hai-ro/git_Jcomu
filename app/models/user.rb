class User < ApplicationRecord
  #association
  has_many :manuals, dependent: :destroy
  belongs_to :club, optional: true
  has_many :players, through: :manuals
  has_many :likes, dependent: :destroy
  has_many :liked_manuals, through: :likes, source: :manual
  
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable #:confirmable
         
  def already_liked?(manual)
    self.likes.exists?(manual_id: manual.id)
  end
end
