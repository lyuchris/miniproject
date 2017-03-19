# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 1) 清理之前所建立的種子資料
Ad.destroy_all
# 2) 填入三張照片的種子資料: "title" = "Myra's birthday" … etc.
ad_list = [
  {"name"=>"Myra's birthday", "description"=>"This is my favourite photo ", "price"=>"100", "email"=> "chrislyu@gmail.com", "img_url"=>"https://cdn.pixabay.com/photo/2017/01/07/20/40/candy-1961536__480.jpg"},
  {"name"=>"Npo", "description"=>"lucky ", "price"=>"1000", "email"=> "hebe@gmail.com", "img_url"=>"https://cdn.pixabay.com/photo/2017/03/10/08/30/girl-2132171__480.jpg"},
  {"name"=>"simple life", "description"=>"favourite life ", "price"=>"500", "email"=> "jj@gmail.com", "img_url"=>"https://cdn.pixabay.com/photo/2017/03/02/16/50/beautiful-child-2111803__480.jpg"}
]
# 3) 建立種子資料陣列
ad_list.each do |ad|
  Ad.create( :name => ad["name"], :description => ad["description"], :price => ad["price"], :email => ad["email"], :img_url => ad["img_url"])
end

