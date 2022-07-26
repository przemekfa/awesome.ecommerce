class Group < ApplicationRecord
  has_many :groupables
  has_many :products, through: :groupables
end
