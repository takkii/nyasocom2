class User < ApplicationRecord
  has_many :blogs

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, # 認証
         :registerable, # 登録・変更・削除
         :recoverable, # パスワードリセット
         :confirmable, # メールでの登録
         :validatable, # メールやパスワードのバリデーション
         # :lockable, # アカウントロック
         :rememberable
       # :recoverable, :rememberable, :validatable

  # like
  has_many :likes

  def liked_by?(blog_id)
    likes.where(blog_id: blog_id).exists?
  end
end
