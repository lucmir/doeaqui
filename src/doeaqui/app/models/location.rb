class Location < ApplicationRecord
  validates_presence_of :state
  validates_presence_of :city
  validates_presence_of :district
  validates_presence_of :street
  validates_presence_of :number
end
