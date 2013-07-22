User.destroy_all
StreetAddress.destroy_all

users = User.create([
  {
    name: "Joe",
    email: "joe@joe.com",
    age: 21
  },
  {
    name: "Betty",
    email: "betty@betty.com",
    age: 29
  },
  {
    name: "Tom",
    email: "tom@tom.com",
    age: 38
  },
  {
    name: "Sally",
    email: "sally@sally.com",
    age: 42
  },
  {
    name: "Bob",
    email: "bob@bob.com",
    age: 53
  }
])

phone_numbers = PhoneNumber.create([
  {
    digits: "1234567890",
    phone_type: "mobile",
    user_id: 1
  },
  {
    digits: "6667778888",
    phone_type: "mobile",
    user_id: 2
  },
  {
    digits: "4443332222",
    phone_type: "home",
    user_id: 2
  },
  {
    digits: "8786564321",
    phone_type: "mobile",
    user_id: 3
  },
  {
    digits: "9990009999",
    phone_type: "work",
    user_id: 4
  }
])

street_addresses = StreetAddress.create([
  {
    street: "123 Any St.",
    city: "Portland",
    zip: "97210",
    users: [ users[0], users[1] ]
  },
  {
    street: "456 Elm St.",
    city: "Seattle",
    zip: "98105",
    users: [ users[2], users[4], users[1] ]
  },
  {
    street: "555 Santa Monica Blvd.",
    city: "Santa Monica",
    zip: "90401",
    users: [ users[3] ]
  }
])