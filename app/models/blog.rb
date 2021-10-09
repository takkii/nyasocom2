class Blog < ApplicationRecord
  def self.search(search)
    return Blog.all unless search
    Book.where(['title LIKE ?', "%#{search}%"])
  end
end
