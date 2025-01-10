class List < ApplicationRecord
  belongs_to :category
  has_many :items, dependent: :destroy
end
