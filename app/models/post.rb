class Post < ApplicationRecord

  mount_uploader :music, MusicUploader
  mount_uploader :image, ImageUploader

  validates :theme, presence: true
  validates :title, presence: true
  validates :music, presence: true
  validates :image, presence: true
  belongs_to :user
  has_many :likes
  has_many :liked_users, through: :likes, source: :user, dependent: :destroy
  has_many :comments

  def self.search(search)
    if search
      Post.where('title LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end
end
