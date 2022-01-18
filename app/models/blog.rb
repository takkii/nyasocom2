class Blog < ApplicationRecord
  has_one_attached :image
  has_many_attached :images

  # image uploader
  mount_uploader :image, ImageUploader

  # movie uploader
  mount_uploader :video, VideoUploader

  # seach method
  def self.search(search)
    return Blog.preload(@blogs).all unless search
    Blog.where(['title LIKE ?', "%#{search}%"])
  end
end 