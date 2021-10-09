class Blog < ApplicationRecord
  def self.search(search)
    return Blog.all unless search
    Blog.where(['title LIKE ?', "%#{search}%"])
  end
end
