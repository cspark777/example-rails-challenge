# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_charge(customer, paid, refunded, count)
  count.times do
    Charge.create(customer: customer, created: 1389618241 + rand(10000), paid: paid, amount: rand(10000), currency: "usd", refunded: refunded)
  end
end

customer1 = Customer.create(first_name: "Johny", last_name: "Flow")
customer2 = Customer.create(first_name: "Raj", last_name: "Jamnis")
customer3 = Customer.create(first_name: "Andrew", last_name: "Chung")
customer4 = Customer.create(first_name: "Mike", last_name: "Smith")

create_charge(customer1, true, false, 5)
create_charge(customer2, true, false, 3)
create_charge(customer3, true, false, 1)
create_charge(customer4, true, false, 1)

create_charge(customer3, false, false, 3)
create_charge(customer4, false, false, 2)

create_charge(customer1, false, true, 3)
create_charge(customer4, false, true, 2)
