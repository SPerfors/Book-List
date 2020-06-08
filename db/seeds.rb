3.times do 
    user = User.new 
    user.username = Faker::Internet.username(specifier: 5..9)
    user.password = Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true)

    user.save 
    
    3.times do 
        author = Author.new
        author.name = Faker::Book.author 
        author.save

        5.times do 
            book = Book.new
            book.title = Faker::Book.title
            book.save 
            book.author = author 
            book.user = user 
        end
    end
end