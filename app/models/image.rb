class Image < ApplicationRecord
  mount_uploader :content, ImageUploader
end
