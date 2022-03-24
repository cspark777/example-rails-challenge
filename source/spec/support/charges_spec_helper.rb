def create_charge(customer, paid, refunded, count)
  count.times do
    Charge.create(customer: customer, created: 1389618241 + rand(10000), paid: paid, amount: rand(10000), currency: "usd", refunded: refunded)
  end
end

def load_seed
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
end
