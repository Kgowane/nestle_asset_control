require 'rails_helper'

RSpec.describe UserLaptop, type: :model do
  it { should belong_to :user }
  it { should belong_to :laptop }
end
