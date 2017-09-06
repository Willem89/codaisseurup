
Category.destroy_all
User.destroy_all

programming = Category.create(name: "Programming")
football_and_fitness = Category.create(name: "Football and Fitness")
how_to_grow_up = Category.create(name: "How to Grow Up")
ruby_gems = Category.create(name: "About Ruby Gems")

willem = User.create(email: "willem@link.com", password: "abcd1234")
jan = User.create(email: "jan@link.com", password: "abcd1234")
arjen = User.create(email: "arjen@link.com", password: "abcd1234")

event = Event.create(name: "Programming",
description: "We are going to talk about how to make ruby even better!", location: "Amsterdam", price: 10,
capacity: 4, includes_food: true, includes_drinks: false, starts_at: 2000, ends_at: 2200, active: true, user: willem)

event = Event.create(name: "Football and Fitness",
description: "How to build muscle in football", location: "Amsterdam", price: 10,
capacity: 4, includes_food: true, includes_drinks: true, starts_at: 2000, ends_at: 2100, active: true, user: willem)

event = Event.create(name: "How to Grow Up",
description: "Help for parents!", location: "Amsterdam", price: 10,
capacity: 4, includes_food: true, includes_drinks: true, starts_at: 1800, ends_at: 2000, active: true, user: arjen)
