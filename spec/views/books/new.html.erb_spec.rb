require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :title => "MyString",
      :editorial => "MyString",
      :year_edition => "MyString",
      :isbn => "MyString",
      :author => create(:author),
      :shelf => create(:shelf),
      :num_edition => "MyString"
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[editorial]"

      assert_select "input[name=?]", "book[year_edition]"

      assert_select "input[name=?]", "book[isbn]"

      assert_select "input[name=?]", "book[author_id]"

      assert_select "input[name=?]", "book[shelf_id]"

      assert_select "input[name=?]", "book[num_edition]"
    end
  end
end
