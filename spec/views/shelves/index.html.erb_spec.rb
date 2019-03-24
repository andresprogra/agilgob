require 'rails_helper'

RSpec.describe "shelves/index", type: :view do
  before(:each) do
    assign(:shelves, [
      Shelf.create!(
        :pasillo => "Pasillo",
        :levels => "Levels"
      ),
      Shelf.create!(
        :pasillo => "Pasillo",
        :levels => "Levels"
      )
    ])
  end

  it "renders a list of shelves" do
    render
    assert_select "tr>td", :text => "Pasillo".to_s, :count => 2
    assert_select "tr>td", :text => "Levels".to_s, :count => 2
  end
end
