json.extract! book, :id, :title, :editorial, :year_edition, :isbn, :author_id, :shelf_id, :num_edition, :created_at, :updated_at
json.url book_url(book, format: :json)
