class Item < ApplicationRecord
  belongs_to :list
  validates :description, presence: true
  has_many :item_tags
  has_many :tags, through: :item_tags, dependent: :destroy
end
