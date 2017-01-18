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
    food = Food.create!(id: (i+ i + (j*j)) ,foodname: foods[i], category: category[i] , calories: i * 100, price:i + 2.99, menu_id: j);

  end
end


Customer.destroy_all
Admin.destroy_all

firstname = Array['Adeeb', 'Sam', 'John'];
lastname = Array['Ahmed', 'Stone', 'Doe'];
phonenumber = Array['6438122934', '12344343575', '321532155'];
email = Array['adeeb@delectable.com', 'sam@delectable.com', 'john@delectable.com'];

(0..2).each do |c|
  customer = Customer.create!(id: c, firstname:firstname[c], lastname:lastname[c], phone:phonenumber[c], email:email[c])
end

admin = Admin.create!(id:0, firstname: firstname[0], lastname: lastname[0], surcharge: 0.00)



Order.destroy_all
Report.destroy_all

@foods = Food.all
report = Report.create!(id: 0)
(0..2).each do |o|
  #foodids = @foods[o].id.to_s + ',' + @foods[o + 1].id.to_s
  foodorder = Array[@foods[o].foodname.to_s, @foods[((o + 1) * 2) - 1].foodname.to_s]
  ttl = @foods[o].price + @foods[((o + 1) * 2) - 1].price

  order= Order.create!(id: o, foods: foodorder, total:ttl, surcharge:0.00, ship:"3333 S Wabash Ave", billing:"6382910293821232:0817:456",
                       instructions:"Call when outside", status:"Delivered", customer_id:o, report_id: 0)
end

@report = Report.first
@orders = Order.all
@ordersum = 0
@ordersurcharge = 0

@orders.each do |order|
  @ordersum += order.total.to_f
  @ordersurcharge = order.surcharge
end

@report.total = @ordersum
@report.surcharge = @ordersurcharge
@report.save