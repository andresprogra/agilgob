require 'rails_helper'

RSpec.describe "authors/show", type: :view do
  before(:each) do
    @author = assign(:author, Author.create!(
      :name => "Name",
      :last_name => "Last Name",
      :nacionality => "Nacionality",
      :review => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Nacionality/)
    expect(rendered).to match(/MyText/)
  end
end
