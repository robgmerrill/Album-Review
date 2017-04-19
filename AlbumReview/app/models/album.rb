class Album < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_attached_file :album_img, styles: { :album_index => "250x350>", :album_show => "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
