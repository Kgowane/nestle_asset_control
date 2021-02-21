class Laptop < ApplicationRecord
  validates_presence_of :model
  validates_presence_of :serial_number
end
