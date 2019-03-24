require 'rails_helper'

RSpec.describe Shelf, type: :model do
  it { should validate_presence_of(:pasillo)}
  it { should validate_presence_of(:levels)}
end
