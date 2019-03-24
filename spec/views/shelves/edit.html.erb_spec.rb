require 'rails_helper'

RSpec.describe "shelves/edit", type: :view do
  before(:each) do
    @shelf = assign(:shelf, Shelf.create!(
      :pasillo => "MyString",
      :levels => "MyString"
    ))
  end

  it "renders the edit shelf form" do
    render

    assert_select "form[action=?][method=?]", shelf_path(@shelf), "post" do

      assert_select "input[name=?]", "shelf[pasillo]"

      assert_select "input[name=?]", "shelf[levels]"
    end
  end
end
