# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Handbag.destroy_all
UserHandbag.destroy_all

cat = User.create(
    name: "Catrina",
    email: "cat.friday@gmail.com",
    address: "123",
    balance: 500
)

claudia = User.create(
    name: "Claudia",
    email: "claudia.com",
    address: "123",
    balance: 500
)

bag = Handbag.create(
    lister_id: claudia.id,
    designer: "Prada",
    bag_type: "bag",
    color: "red",
    fabric: "leather",
    price: 100,
    image: "image"
    )

    clutch = Handbag.create(
    lister_id: cat.id,
    designer: "Gucci",
    bag_type: "clutch",
    color: "black",
    fabric: "leather",
    price: 100,
    image: "image"
    )

    cat_rented = UserHandbag.create(user_id:cat.id, handbag_id: bag.id)
    claudia_rented = UserHandbag.create(user_id:claudia.id, handbag_id: clutch.id)






