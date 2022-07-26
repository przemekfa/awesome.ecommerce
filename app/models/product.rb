class Product < ApplicationRecord
  has_many :orderables
  has_many :carts, through: :orderables
  has_many :groupables
  has_many :groups, through: :groupables
  has_one_attached :main_image
  has_many_attached :pictures
end
