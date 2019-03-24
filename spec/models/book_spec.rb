require 'rails_helper'

RSpec.describe Book, type: :model do
  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:editorial)}
  it { should validate_presence_of(:isbn)}
  it { should belong_to(:author)}
  it { should belong_to(:shelf)}
end
