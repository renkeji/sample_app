namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!( name: "Jason Ren",
                  email: "jason.niceday@gmail.com",
                  password: "123456",
                  password_confirmation: "123456")
    User.create!( name: "Example User",
                  email: "example@railstutorial.org",
                  password: "foobar",
                  password_confirmation: "foobar")
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password = "password"
      User.create!( name: name,
                    email: email,
                    password: password,
                    password_confirmation: password)
    end
  end
end