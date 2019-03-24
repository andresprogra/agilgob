require 'rails_helper'

RSpec.describe "shelves/show", type: :view do
  before(:each) do
    @shelf = assign(:shelf, Shelf.create!(
      :pasillo => "Pasillo",
      :levels => "Levels"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Pasillo/)
    expect(rendered).to match(/Levels/)
  end
end
