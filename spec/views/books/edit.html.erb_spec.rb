require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    create(:shelf)
    create(:author)
    @authors = Author.all
    @shelves = Shelf.all
    @book = assign(:book, Book.create!(
      :title => "MyString",
      :editorial => "MyString",
      :year_edition => "MyString",
      :isbn => "MyString",
      :author => create(:author),
      :shelf => create(:shelf),
      :num_edition => "MyString"
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[editorial]"

      assert_select "input[name=?]", "book[year_edition]"

      assert_select "input[name=?]", "book[isbn]"

      assert_select "select[name=?]", "book[author_id]"

      assert_select "select[name=?]", "book[shelf_id]"

      assert_select "input[name=?]", "book[num_edition]"
    end
  end
end
