class Charity < ApplicationRecord
  belongs_to :location
  accepts_nested_attributes_for :location

  validates_presence_of :name
  validates_presence_of :location
end
