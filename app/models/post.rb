class Post < ApplicationRecord

  mount_uploader :music, MusicUploader
  mount_uploader :image, ImageUploader

  validates :title, presence: true
  validates :music, presence: true
  validates :image, presence: true
  belongs_to :user

  def self.search(search)
    if search
      Post.where('title LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end
end
