class Prototype < ApplicationRecord
  belongs_to :user
  has_many   :images
  accepts_nested_attributes_for :images

  # has_many   :comments
  # has_many   :likes, dependent: :destroy
end
