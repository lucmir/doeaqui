class Charity < ApplicationRecord
  belongs_to :location
  accepts_nested_attributes_for :location
end
