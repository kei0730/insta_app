# メインのサンプルユーザーを1人作成する
User.create!(name:                  "admin User",
             username:              "admin User",
             email:                 "admin@railstutorial.org",
             password:              "adminuser",
             password_confirmation: "adminuser",
             admin:                 true
             )

# 追加のユーザーをまとめて生成する
99.times do |n|
  name     = Faker::Name.name
  username = name
  email    = "example-#{n+1}@railstutorial.org"
  password = "password"
  
  User.create!(name:                  name,
               username:              username,
               email:                 email,
               password:              password,
               password_confirmation: password
               )
end