
Category.destroy_all
User.destroy_all
Profile.destroy_all
Photo.destroy_all
Event.destroy_all



#Users#
willem = User.create(email: "willem@link.com", password: "abcd1234")
jan = User.create(email: "jan@link.com", password: "abcd1234")
arjen = User.create(email: "arjen@link.com", password: "abcd1234")


#Events#
event1 = Event.create(name: "Football",
description: "Yes, football", location: "Amsterdam", price: 10,
capacity: 4, includes_food: true, includes_drinks: true, starts_at: "0020-10-10 01:00:01", ends_at: "0020-10-10 01:00:01", active: true, user: willem)

event2 = Event.create(name: "Football and Fitness",
description: "How to build muscle in football", location: "Amsterdam", price: 10,
capacity: 4, includes_food: true, includes_drinks: true, starts_at: "0020-10-10 01:00:01", ends_at: "0020-10-10 01:00:01", active: true, user: willem)

event3 = Event.create(name: "How to Grow Up",
description: "Help for parents!", location: "Amsterdam", price: 10,
capacity: 4, includes_food: true, includes_drinks: true, starts_at: "0020-10-10 01:00:01", ends_at: "0020-10-10 01:00:01", active: true, user: arjen)

#categories#
programming = Category.create(name: "Programming")
football_and_fitness = Category.create(name: "Football and Fitness")
how_to_grow_up = Category.create(name: "How to Grow Up")
ruby_gems = Category.create(name: "About Ruby Gems")

#Photos#
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dh5i6wb4p/image/upload/v1504786696/936815_10201215083604265_355455728_n_lqstot.jpg", event: event1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dh5i6wb4p/image/upload/v1504786715/img_82250973_i8uw70.jpg", event: event1)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dh5i6wb4p/image/upload/v1504786705/5_uzbatk.jpg", event: event1)

## registrations

registration.create!(event: event1, user: wouter, user_id: 1, event_id: 1, price:"9.99", guests_count: 2)
registration.create!(event: event1, user: matt, user_id: 1, event_id: 1, price:"9.99", guests_count: 1)
