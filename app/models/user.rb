class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post,dependent: :destroy
  has_many :comments
  validates :email, presence: true, uniqueness: true
  mount_uploader :avatar, AvatarUploader
  mount_uploader :backimage, BackimageUploader
  
  def already_liked?(post)
    self.likes.exists?(post_id: post.id)
  end
end
