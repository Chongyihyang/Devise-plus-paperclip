class Post < ApplicationRecord
  belongs_to :user
  has_attached_file :image, styles: { large:"1000*1000>", medium:"100*100>", thumb:"50*50#"}
  validates_attachment_content_type :image, :content_type => /^image\/(png|jpeg)/
end
