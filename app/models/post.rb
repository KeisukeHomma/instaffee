class Post < ActiveRecord::Base
  validates :title, length: { maximum: 10 } # 値が「100文字以下」であらば有効

  mount_uploader :picture, PictureUploader

  belongs_to :user
end
