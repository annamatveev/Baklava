User.destroy_all

50.times do |index|
  user = User.create!(name: Faker::Name.name,
                      username: Faker::Internet.user_name)
  Photo.create!(user: user,
                uploader: user,
                url: Faker::Avatar.image)
end

p "Created #{User.count} users"