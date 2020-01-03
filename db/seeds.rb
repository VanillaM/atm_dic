# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 创建一个主用户 
User.create!(name: "Example User", 
             email: "example@railstutorial.org", 
             password: "foobar", 
             password_confirmation: "foobar", 
             admin: true)
# 生成一些其他用户 
99.times do |n| 
    name = Faker::Name.name 
    email = "example-#{n+1}@railstutorial.org" 
    password = "password" 
    User.create!(name: name, 
                 email: email, 
                 password: password, 
                 password_confirmation: password) 
end

# 创建词条
Entry.create(zhname:"大气河", enname:"atmospheric rivers", 
             interpretation:"enhanced water vapor transportation belts",
             user_id: 1)
Entry.create(zhname:"低空急流", enname:"low level jet",
                          interpretation:"the jet at 850hPa",
                                       user_id: 2)
Entry.create(zhname:"梅雨", enname:"meiyu",
                          interpretation:"long lasted rain",
                                       user_id: 2)
Entry.create(zhname:"菠萝快车", enname:"peanaple express",
                          interpretation:"another name for AR",
                                       user_id: 1)

