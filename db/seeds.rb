

User.destroy_all

willem = User.create(email: "Link@link.com", password: "abcd1234")

event = Event.create(name: "Ruby-logic-gathering",
description: "We are going to talk about how to make ruby even better!", location: "Amsterdam", price: 10,
capacity: 4, includes_food: true, includes_drinks: false, starts_at: 2000, ends_at: 2200, active: true, user: willem)
