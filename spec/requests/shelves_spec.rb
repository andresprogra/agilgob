require 'rails_helper'

RSpec.describe "Shelves", type: :request do
  it "GET /shelves" do
    get "/shelves"
    expect(response).to have_http_status(200)
  end

  it "GET /shelves/:id" do
    shelf = create(:shelf)
    get "/shelves/#{shelf.id}"
    expect(response).to have_http_status(200)
  end

  it "POST /shelves" do 
    post "/shelves",:params => {:shelf => {:pasillo => "Bravo", :levels => "3"}}
    expect(response).to redirect_to(assigns(:shelf))
  end
  
  it "PUT  /shelves/:id" do
    shelf = create(:shelf)
    put "/shelves/#{shelf.id}", :params => {:shelf => {:pasillo => "Delta"}}
    shelf = Shelf.last
    expect(shelf.pasillo).equal?("Delta")
    expect(response).to redirect_to(assigns(:shelf))
  end

  it "DELETE /authos/:id" do 
    shelf = create(:shelf)
    delete "/shelves/#{shelf.id}"
    expect(response).to redirect_to(shelves_path)
  end

end

