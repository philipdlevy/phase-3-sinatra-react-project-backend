require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end


# Book routes
  get "/books" do 
    books = Book.all
    books.to_json
  end

  get "/books/:id" do 
    books = Book.find(params[:id])
    books.to_json
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

end
