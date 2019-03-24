require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "Title",
      :editorial => "Editorial",
      :year_edition => "Year Edition",
      :isbn => "Isbn",
      :author => create(:author),
      :shelf => create(:shelf),
      :num_edition => "Num Edition"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Editorial/)
    expect(rendered).to match(/Year Edition/)
    expect(rendered).to match(/Isbn/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Num Edition/)
  end
end
