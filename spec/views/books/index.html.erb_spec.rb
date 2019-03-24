require 'rails_helper'

RSpec.describe "books/index", type: :view do
  let(:author){create(:author)}
  let(:shelf){create(:shelf)}
  before(:each) do
    assign(:books, [
      Book.create!(
        :title => "Title",
        :editorial => "Editorial",
        :year_edition => "Year Edition",
        :isbn => "Isbn",
        :author_id => author.id,
        :shelf_id => shelf.id,
        :num_edition => "Num Edition"
      ),
      Book.create!(
        :title => "Title",
        :editorial => "Editorial",
        :year_edition => "Year Edition",
        :isbn => "Isbn",
        :author_id => author.id,
        :shelf_id => shelf.id,
        :num_edition => "Num Edition"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Editorial".to_s, :count => 2
    assert_select "tr>td", :text => "Year Edition".to_s, :count => 2
    assert_select "tr>td", :text => "Isbn".to_s, :count => 2
    # assert_select "tr>td", :text => "Author".to_s, :count => 2
    # assert_select "tr>td", :text => "Shelf".to_s, :count => 2
    assert_select "tr>td", :text => "Num Edition".to_s, :count => 2
  end
end
