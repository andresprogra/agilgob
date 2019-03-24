require 'rails_helper'

RSpec.describe "shelves/new", type: :view do
  before(:each) do
    assign(:shelf, Shelf.new(
      :pasillo => "MyString",
      :levels => "MyString"
    ))
  end

  it "renders new shelf form" do
    render

    assert_select "form[action=?][method=?]", shelves_path, "post" do

      assert_select "input[name=?]", "shelf[pasillo]"

      assert_select "input[name=?]", "shelf[levels]"
    end
  end
end
