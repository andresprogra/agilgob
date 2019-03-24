require 'rails_helper'

RSpec.describe "authors/edit", type: :view do
  before(:each) do
    @author = assign(:author, Author.create!(
      :name => "MyString",
      :last_name => "MyString",
      :nacionality => "MyString",
      :review => "MyText"
    ))
  end

  it "renders the edit author form" do
    render

    assert_select "form[action=?][method=?]", author_path(@author), "post" do

      assert_select "input[name=?]", "author[name]"

      assert_select "input[name=?]", "author[last_name]"

      assert_select "input[name=?]", "author[nacionality]"

      assert_select "textarea[name=?]", "author[review]"
    end
  end
end
