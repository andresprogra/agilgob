require 'rails_helper'

RSpec.describe "Authors", type: :request do
  it "GET /authors" do
    get "/authors"
    expect(response).to have_http_status(200)
  end

  it "GET /authors/:id" do
    author = create(:author)
    get "/authors/#{author.id}"
    expect(response).to have_http_status(200)
  end

  it "POST /authors" do 
    post "/authors",:params => {:author => {:name => "Nombre", :last_name => "Apellido"}}
    expect(response).to redirect_to(assigns(:author))
  end
  
  it "PUT  /authors/:id" do
    author = create(:author)
    put "/authors/#{author.id}", :params => {:author => {:name => "Nombre"}}
    author = Author.last
    expect(author.name).equal?("Nombre")
    expect(response).to redirect_to(assigns(:author))
  end

  it "DELETE /authos/:id" do 
    author = create(:author)
    delete "/authors/#{author.id}"
    expect(response).to redirect_to(authors_path)
  end

end

