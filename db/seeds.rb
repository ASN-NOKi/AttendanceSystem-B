# coding: utf-8

User.create!(name: "Sample User",
             email: "sample@email.com",
             department: "",
             password: "password",
             password_confirmation: "password",
             admin: true)
             
60.times do |n|
  name = Faker::Name.name
  email = "sample-#{n+1}@email.com"
  department = ""
  password = "password"
  User.create!(name: name,
               email: email,
               department: department,
               password: password,
               password_confirmation: password)
end

