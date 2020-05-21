class Restaurant < ApplicationRecord
  has_many :reviews¨

  FOODCATEGORY = %w(chinese italian japanese french belgian).freeze
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: FOODCATEGORY }
  validates :phone_number, format: { with: /\A(0|\+33[\s-]?)[1-9][\s-]?(\d{2}[\s-]?){4}\z/ }
end
