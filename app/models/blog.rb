class Blog < ApplicationRecord

  # image uploader
  mount_uploader :image, ImageUploader

  # seach method
  def self.search(search)
    return Blog.all unless search
    Blog.where(['title LIKE ?', "%#{search}%"])
  end
end 