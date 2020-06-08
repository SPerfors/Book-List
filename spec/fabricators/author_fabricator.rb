Fabricator(:author) do 
    name { Faker::Book.author }
end