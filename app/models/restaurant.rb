class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true, allow_blank: false
  validates :address, presence: true, allow_blank: false
  validates :phone_number, presence: true, uniqueness: true, allow_blank: false
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
