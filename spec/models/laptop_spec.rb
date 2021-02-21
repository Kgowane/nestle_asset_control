require 'rails_helper'

RSpec.describe Laptop, type: :model do
  it { should validate_presence_of :model }
  it { should validate_presence_of :serial_number }
end
