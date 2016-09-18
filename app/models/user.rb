class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email,:name, :group, :profile, :works, presence: true
  mount_uploader :image, ImageUploader
  has_many :prototypes

  has_many :comments
end
