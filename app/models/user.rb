class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: true
  validates :name, presence: true, length: { maximum: 20}
  validates :group, presence: true
  validates :profile, presence: true
  validates :works, presence: true
end
