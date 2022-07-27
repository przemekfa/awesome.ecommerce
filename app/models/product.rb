class Product < ApplicationRecord
  has_many :orderables
  has_many :carts, through: :orderables
  has_many :groupables
  has_many :groups, through: :groupables
  has_one_attached :main_image
  has_many_attached :pictures

  def main_image_as_thumbnail
    main_image.variant(resize_to_limit: [300, 300]).processed
  end

  def pictures_as_thumbnails
    pictures.map do |picture|
      picture_as_thumbnail(picture)
    end
  end

  def picture_as_thumbnail(picture)
    picture.variant(resize_to_limit: [150, 150]).processed
  end
end
