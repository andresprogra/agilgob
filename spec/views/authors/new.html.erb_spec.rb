require 'rails_helper'

RSpec.describe "authors/new", type: :view do
  before(:each) do
    assign(:author, Author.new(
      :name => "MyString",
      :last_name => "MyString",
      :nacionality => "MyString",
      :review => "MyText"
    ))
  end

  it "renders new author form" do
    render

    assert_select "form[action=?][method=?]", authors_path, "post" do

      assert_select "input[name=?]", "author[name]"

      assert_select "input[name=?]", "author[last_name]"

      assert_select "input[name=?]", "author[nacionality]"

      assert_select "textarea[name=?]", "author[review]"
    end
  end
end
