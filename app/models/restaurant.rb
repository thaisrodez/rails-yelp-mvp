class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian].freeze
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY }

  accepts_nested_attributes_for :reviews
end
