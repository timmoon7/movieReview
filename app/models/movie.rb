class Movie < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_many :reviews

  has_attached_file :movie_img, styles: { movie_index: "220x320>", movie_show: "300x420>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :movie_img, content_type: /\Aimage\/.*\z/
end
