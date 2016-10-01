class Post < ActiveRecord::Base
  validates :title, length: { maximum: 100 } # 値が「100文字以下」であらば有効
  validates :picture, presence: true

  mount_uploader :picture, PictureUploader

  belongs_to :user
end
