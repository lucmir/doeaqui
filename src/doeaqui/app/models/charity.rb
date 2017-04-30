class Charity < ApplicationRecord
  validates :name, presence: true

  belongs_to :location
  accepts_nested_attributes_for :location
end
