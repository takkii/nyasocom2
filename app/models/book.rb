class Book < ApplicationRecord
  enum status: {
    '所 持': 0, # possession
    '手放す': 1, # relinquish
  }

  mount_uploader :picture, PictureUploader

  def self.search(search)
    return Book.all unless search
    Book.where(['title LIKE ?', "%#{search}%"])
  end
end
