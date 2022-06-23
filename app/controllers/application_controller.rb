require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end


# Book routes
  get "/books" do 
    books = Book.all
    books.to_json
  end

  get "/books/:id" do 
    books = Book.find(params[:id])
    books.to_json
  end


  get "/books/all/title_ascending" do 
    books = Book.all.title_ascending
    books.to_json
  end
  get "/books/all/title_descending" do 
    books = Book.all.title_descending
    books.to_json
  end
  get "/books/all/by_price_ascending" do
    books = Book.all.by_price_ascending
    books.to_json
  end
  get "/books/all/by_price_descending" do
    books = Book.all.by_price_descending
    books.to_json
  end


  post "/books" do 
    new_book = Book.create(
      title: params[:title],
      author_name: params[:author_name],
      description: params[:description],
      price: params[:price],
      pages: params[:pages],
      author_id: params[:author_id]
    )
    new_book.to_json
  end

  patch "/books/:id" do
    book = Book.find(params[:id])
    book.update(
      title: params[:title],
      author_name: params[:author_name],
      description: params[:description],
      price: params[:price],
      pages: params[:pages],
      )
      book.to_json
  end

  delete "/books/:id" do
    book = Book.find(params[:id])
    book.destroy
    book.to_json
  end



# Author routes
  get "/authors" do 
    authors = Author.all
    authors.to_json
  end

  get "/authors/:id" do 
    authors = Author.find(params[:id])
    authors.to_json
  end

  get "/authors/all/name_ascending" do 
    authors = Author.all.name_ascending
    authors.to_json
  end
  get "/authors/all/name_descending" do 
    authors = Author.all.name_descending
    authors.to_json
  end


  post "/authors" do 
    new_author = Author.create(
      name: params[:name]
    )
    new_author.to_json
  end

  patch "/authors/:id" do
    author = Author.find(params[:id])
    author.update(
      name: params[:name],
      )
      author.to_json
  end

  delete "/authors/:id" do
    authors = Author.find(params[:id])
    authors.destroy
    authors.to_json
  end

end
