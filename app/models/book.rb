class Book < ApplicationRecord
  has_one_attached :picture

  enum status: {
    '所 持': 0, # possession
    '手放す': 1, # relinquish
  }

  mount_uploader :picture, PictureUploader

  def self.search(search)
    return Book.eager_load(@books).all unless search
    Book.where(['title LIKE ?', "%#{search}%"])
  end
end
