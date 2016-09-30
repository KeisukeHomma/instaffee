class Post < ActiveRecord::Base
  validates :title, length: { maximum: 255 } # 値が「255文字以下」であらば有効
end
