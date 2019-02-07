Restaurant.destroy_all
tambarina = Restaurant.create(name: "Tambarina", address: "Rua Poco dos Negros", phone_number:  9333873, category: "belgian")
luigis = Restaurant.create(name: "Luigis", address: "Santos", phone_number:  9337523, category: "italian")
snails = Restaurant.create(name: "Snails", address: "Cais de Sodre", phone_number:  9389333, category: "french")
xuchu = Restaurant.create(name: "XuChu", address: "Alvalade", phone_number:  9373633, category: "chinese")

puts "finished seeding"
