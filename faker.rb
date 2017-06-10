require 'faker'
100.times do
	product = Product.new
	product.name = Faker::Commerce.product_name
	product.price = Faker::Commerce.price(10,1000)
	product.description = Faker::Lorem.paragraph
	product.stock = Faker::Number.number(3)
	product.cod_eligibility = [true,false].sample
	category = Category.all.sample
	product.category_id = category.id
	product.sub_category_id = category.sub_categories.sample.id
	product.save
end


----
100.times do
    product = Product.new
    product.name = Faker::Commerce.product_name
    product.price = Faker::Commerce.price(10,1000)
    product.description = Faker::Lorem.paragraph
    product.stock = Faker::Number.number(3)
    product.cod_eligibility = [true,false].sample
    category = Category.all.sample
    product.category_id = category.id
    product.sub_category_id = category.sub_categories.sample.id
    product.save
end


---


require 'faker'
100.times do
	article = Article.new
	article.title = Faker::Commerce.product_name
	article.body = Faker::Commerce.price(10,1000)
	article.publish_date = Faker::Lorem.paragraph
	article.category_id = Category.all.sample.id
	article.save
end
-------
require 'faker'
5.times do
	category = Category.new
	category.name = Faker::Book.genre
	category.description = Faker::Lorem.paragraph
	category.save
end


50.times do
  article = Article.new
  article.title = Faker::Book.title
  article.body = Faker::Lorem.paragraph
  category = Category.all.sample
  article.category_id = category.id
  article.publish_date = Faker::Date.between(2.days.ago, Date.today)
  article.save
end

50.times do
  comment = Comment.new
  comment.title = Faker::Book.title
  comment.body = Faker::Lorem.paragraph
  article = Article.all.sample
  comment.article_id = article.id
  comment.save
end

----------------------------------

products = Product.where('cod_eligibility = ?',false)
products.each do |product|
	puts "#{product.name}  #{product.cod_eligibility}"
end

products = Product.where('price > ?',750)
products.count
products.each do |product|
	puts "#{product.name}  #{product.price}"
end

products = Product.where('price > ? AND price < ?',250,500)
products.count
products.each do |product|
	puts "#{product.name}  #{product.price}"
end

products = Product.where('cod_eligibility = ?',false).count







