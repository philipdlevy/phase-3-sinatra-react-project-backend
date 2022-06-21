puts "🌱 Seeding spices..."

# Seed your database here

#Authors
jk_rowling = Author.create(name: "Jk Rowling")
stephen_king = Author.create(name: "Stephen King")
james_patterson = Author.create(name: "James Patterson")
john_grisham = Author.create(name: "John Grisham")
mark_twain = Author.create(name: "Mark Twain")
ernest_hemingway = Author.create(name: "Ernest Hemingway")
charles_dickens = Author.create(name: "Charles Dickens")


#Books
harry_potter_and_the_sorcerers_stone = Book.create(title: "Harry Potter and the Sorcerer's Stone", author_name: "JK Rowling", description: "Fantasy Novel", price: 25.99, pages: 200, author_id: jk_rowling.id)

the_shining = Book.create(title: "The Shining", author_name: "Stephen King", description: "Horror Novel", price: 20.00, pages: 300, author_id: stephen_king.id)

along_came_a_spider = Book.create(title: "Along Came a Spider", author_name: "James Patterson", description: "Thriller Novel", price: 27.99, pages: 330, author_id: james_patterson.id)

a_time_to_kill = Book.create(title: "A Time To Kill", author_name: "John Grisham", description: "Legal Thriller Novel", price: 30.99, pages: 400, author_id: john_grisham.id)

adventures_of_huckleberry_finn = Book.create(title: "Adventures of Huckleberry Finn", author_name: "Mark Twain", description: "Huckleberry Finn's escape from his abusive father", price: 21.00, pages: 290, author_id: mark_twain.id)

the_old_man_and_the_sea = Book.create(title: "The Old Man and The Sea", author_name: "Ernest Hemingway", description: "Old Man Battles Fish", price: 11.39, pages: 130, author_id: ernest_hemingway.id)

great_expectations = Book.create(title: "Great Expectation", author_name: "Charles Dickens", description: "Learn to lower expectations", price: 4.99, pages: 530, author_id: charles_dickens.id)


puts "✅ Done seeding!"
