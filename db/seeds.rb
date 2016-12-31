# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Food.destroy_all
Menu.destroy_all

foods = Array['Tacos', 'Paneer', 'Broccoli & Chedder Soup', 'Ceaser salad', 'Cheesecake'];
category = Array['Vegetarian', 'Vegan', 'Gluten Free', 'Dairy Free', 'Organic'];


(1..4).each do |j|
  menu = Menu.create!(id: j, menuname: "Menu##{j}" )

  (0..3).each do |i|
    food = Food.create!(id: (i+ i + (j*j)) ,foodname: foods[i], category: category[i] , calories: i * 100, price:i + 2.99, menu_id: i);

  end
end