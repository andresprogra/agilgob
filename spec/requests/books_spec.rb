require 'rails_helper'

RSpec.describe "Books", type: :request do
  it "GET /books" do
    get "/books"
    expect(response).to have_http_status(200)
  end

  it "GET /books/:id" do
    book = create(:book)
    get "/books/#{book.id}"
    expect(response).to have_http_status(200)
  end

  it "POST /books" do 
    author = create(:author)
    shelf = create(:shelf)
    post "/books",:params => {:book => {title: "Title", editorial: "Editorial", isbn: "ISBN", author_id: author.id, shelf_id: shelf.id}}
    expect(response).to redirect_to(assigns(:book))
  end
  
  it "PUT  /books/:id" do
    book = create(:book)
    put "/books/#{book.id}", :params => {:book => {:title => "Delta"}}
    book = Book.last
    expect(book.title).equal?("Delta")
    expect(response).to redirect_to(assigns(:book))
  end

  it "DELETE /authos/:id" do 
    book = create(:book)
    delete "/books/#{book.id}"
    expect(response).to redirect_to(books_path)
  end

end


