puts 'Creating users...'
User.create!({
  first_name: "Марина",
  last_name: "Старкова",
  nickname: "Маринка",
  author: true,
  email: "marina.starkova@gmail.com",
})


User.create!({
  first_name: "Галина Георгиевна",
  last_name: "Старкова",
  nickname: "Галина Георгиевна",
  author: true,
  email: "gg42@gmail.com",
})


User.create!({
  first_name: "Андрей Павлович",
  last_name: "Старков",
  nickname: "Андрей Янебайрон",
  author: true,
  email: "apstar42@gmail.com",
})

User.create!({
  first_name: "Ольга",
  last_name: "Старкова",
  nickname: "Лёлик",
  author: true,
  email: "olstar.ru@gmail.com",
})
puts 'Users created!'


puts 'Creating poems...'
Poem.create!({
  title: "",
  content: "",
  year: ,
  user_id: ,
  cover: nil,
  original: nil,
  dedicated_to: "",
})

