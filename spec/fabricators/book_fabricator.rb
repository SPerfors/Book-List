Fabricator (:book) do 
    author(inverse_of: :author)
    title { Faker::Book.title }
end