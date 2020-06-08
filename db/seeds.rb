3.times do 
    user = User.new 
    user.username = Faker::Internet.username(specifier: 5..9)
    user.password = Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true)

    user.save 
    
    5.times do 
        Fabricate(:book)
    end
end