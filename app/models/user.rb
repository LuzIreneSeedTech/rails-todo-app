class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_fill: [60, 60, crop: :attention] 
  end
end
