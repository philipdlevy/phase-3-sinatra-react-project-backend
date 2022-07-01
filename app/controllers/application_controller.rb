require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  # Book routes
  get "/books" do 
    books = Book.all
    books.to_json(include: :author)
  end

  get "/books/:id" do 
    books = Book.find(params[:id])
    books.to_json
  end


  # get "/books/all/title_ascending" do 
  #   books = Book.all.title_ascending
  #   books.to_json
  # end
  # get "/books/all/title_descending" do 
  #   books = Book.all.title_descending
  #   books.to_json
  # end
  # get "/books/all/by_price_ascending" do
  #   books = Book.all.by_price_ascending
  #   books.to_json
  # end
  # get "/books/all/by_price_descending" do
  #   books = Book.all.by_price_descending
  #   books.to_json
  # end


  post "/books" do 
    # use author name to see if that author exists
    # if yes, create that book in the authors collection
    # if no, create an author and then create that book in that authors collection
    # active record associations
    author = Author.find_or_create_by(name: params[:author_name])
    
    # author = Author.find_by(id: params[:author_id])

    new_book = author.books.create(
      title: params[:title],
      description: params[:description],
      price: params[:price],
      pages: params[:pages],
    )
    new_book.to_json
  end

  patch "/books/:id" do
    book = Book.find(params[:id])
    book.update(
      title: params[:title],
      description: params[:description],
      price: params[:price],
      pages: params[:pages],
      # author_name: params[:author_name],
    )
    
    author = book.author
    author.update(
      name: params[:author_name]
      # author.save
    )
    author.to_json
    book.to_json
    # binding.pry
    # author = Author.find(params[:id])
    # author.update(
    #   name: params[:author_name],
    #   )
    #   author.to_json
      # binding.pry
  end

  # patch "/authors/:id" do
  #   author = Author.find(params[:id])
  #   author.update(
  #     name: params[:name],
  #     )
  #     author.to_json
  # end





  # Author routes
  get "/authors" do 
    authors = Author.all
    authors.to_json(include: :books)
  end

  get "/authors/:id" do 
    authors = Author.find(params[:id])
    authors.to_json
  end

  # get "/authors/all/name_ascending" do 
  #   authors = Author.all.name_ascending
  #   authors.to_json
  # end
  # get "/authors/all/name_descending" do 
  #   authors = Author.all.name_descending
  #   authors.to_json
  # end


  # post "/authors" do 
  #   new_author = Author.create(
  #     name: params[:name]
  #   )
  #   new_author.to_json
  # end

  patch "/authors/:id" do
    author = Author.find(params[:id])
    author.update(
      name: params[:name],
      )
      author.to_json
      binding.pry
  end

  # delete "/authors/:id" do
  #   authors = Author.find(params[:id])
  #   authors.destroy
  #   authors.to_json
  # end

end
