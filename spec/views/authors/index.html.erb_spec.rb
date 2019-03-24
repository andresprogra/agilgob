require 'rails_helper'

RSpec.describe "authors/index", type: :view do
  before(:each) do
    assign(:authors, [
      Author.create!(
        :name => "Name",
        :last_name => "Last Name",
        :nacionality => "Nacionality",
        :review => "MyText"
      ),
      Author.create!(
        :name => "Name",
        :last_name => "Last Name",
        :nacionality => "Nacionality",
        :review => "MyText"
      )
    ])
  end

  it "renders a list of authors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Nacionality".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
