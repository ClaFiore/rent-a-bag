require 'faker'
User.destroy_all
Handbag.destroy_all
UserHandbag.destroy_all

cat = User.create(name: "Catrina", email: "cat.friday@gmail.com", address: Faker::Address.full_address, balance: 500)
claudia = User.create(name: "Claudia", email: "claudia@gmail.com", address: Faker::Address.full_address, balance: 500)
sabrina = User.create(name: "Sabrina", email: "sabrina@gmail.com", address: Faker::Address.full_address, balance: 500)
isabel = User.create(name: "Isabel", email: "isabel@yahoo.com", address: Faker::Address.full_address, balance: 500)

bag1 = Handbag.create(lister_id: cat.id, designer: "Hermes", bag_type: "handbag", color: "red", fabric: "leather", price: 280, image: "https://www.uokpl.rs/fpng/f/524-5245588_victoria-beckham-with.png")
bag2 = Handbag.create(lister_id: cat.id, designer: "Louis Vuitton", bag_type: "travel bag", color: "brown", fabric: "leather", price: 195, image: "https://purepng.com/public/uploads/medium/purepng.com-louis-vuitton-women-baghandbagwomen-bagsoft-fabricladieslouisvuitton-1421526415334wvyve.png")
bag3 = Handbag.create(lister_id: cat.id, designer: "Prada", bag_type: "handbag", color: "pink", fabric: "leather", price: 180, image: "https://www.prada.com/content/dam/pradanux_products/1/1BA/1BA282/2ERXF0442/1BA282_2ERX_F0442_V_MOE_SLR.png")
bag4 = Handbag.create(lister_id: cat.id, designer: "Prada", bag_type: "handbag", color: "black", fabric: "leather", price: 160, image: "https://www.prada.com/content/dam/pradanux_products/1/1BA/1BA786/NZVF0002/1BA786_NZV_F0002_V_OOO_SLR.png")


bag5 = Handbag.create(lister_id: claudia.id, designer: "Dior", bag_type: "clutch", color: "navy", fabric: "embroidered textile", price: 240, image: "https://imgix.bustle.com/uploads/image/2019/12/18/7162aa5b-be69-4ede-b200-f20515d2f97d-dior_cruise_2020_new_30_montaigne_bag_7.png")
bag6 = Handbag.create(lister_id: claudia.id, designer: "Dolce & Gabbana", bag_type: "tote", color: "pink", fabric: "leather", price: 150, image: "https://www.ft.com/__origami/service/image/v2/images/raw/http%3A%2F%2Fcom.ft.imagepublish.prod.s3.amazonaws.com%2F86578f7e-7d8f-11e7-ab01-a13271d1ee9c?fit=scale-down&source=next&width=700")
bag7 = Handbag.create(lister_id: claudia.id, designer: "Stella McCartney", bag_type: "tote", color: "grey", fabric: "leather", price: 150, image: "https://i.pinimg.com/originals/a9/f2/73/a9f273a5fb8d1dbffa9c3f5a02467d44.png")
bag8 = Handbag.create(lister_id: claudia.id, designer: "Gucci", bag_type: "cross-body", color: "red", fabric: "leather", price: 180, image: "https://www.gogoalbags.co/html/upload/item_img/201901/77352/1548488141588597406.png")

bag9 = Handbag.create(lister_id: sabrina.id, designer: "Chanel", bag_type: "handbag", color: "black", fabric: "leather", price: 230, image: "https://i.pinimg.com/originals/7b/56/db/7b56db09b706f460d38c4de1e1afd78b.png")
bag10 = Handbag.create(lister_id: sabrina.id, designer: "Yves Saint Laurent", bag_type: "clutch", color: "black", fabric: "leather", price: 200, image: "https://cdn.shopify.com/s/files/1/0268/9243/5540/products/cover_image_2bdf1100-1d45-434d-b190-4bd1bce029cf_2048x.png?v=1569701624")
bag11 = Handbag.create(lister_id: sabrina.id, designer: "Dolce & Gabbana", bag_type: "handbag", color: "blue", fabric: "leather", price: 195, image: "https://avenuesixty.com/wp-content/uploads/2014/05/Dolce-Gabbana-Royal-Blue-Leather-Miss-Sicily-Small-Shoulder-Bag.png")
bag12 = Handbag.create(lister_id: sabrina.id, designer: "Chanel", bag_type: "backpack", color: "beige", fabric: "leather", price: 200, image: "https://luxuryfashionrentals.com/wp-content/uploads/2019/11/chanel-beige-and-black-crumpled-calfskin-leather-gabrielle-backpack.png")


bag13 = Handbag.create(lister_id: isabel.id, designer: "Dolce & Gabbana", bag_type: "clutch", color: "leopard", fabric: "leather", price: 200, image: "https://s3-eu-west-1.amazonaws.com/htsi-ez-prod/ez/images/9/0/1/0/1530109-1-eng-GB/Dolce-&-Gabbana_%C2%A33400_harrods.com.png")
bag14 = Handbag.create(lister_id: isabel.id, designer: "Chloe", bag_type: "cross-body", color: "beige", fabric: "leather", price: 230, image: "https://cdn.shopify.com/s/files/1/1915/2605/products/chloe_small_tess_bag_biscuit_pink_CHC18WS153A37_plu221136_detail_7c934fd7-5df4-49d7-9d12-8a90a1e0de15.png?v=1571439890")
bag15 = Handbag.create(lister_id: isabel.id, designer: "Louis Vuitton", bag_type: "cross-body", color: "red", fabric: "leather", price: 190, image: "https://au.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton--M41731_PM2_Front%20view.png")
bag16 = Handbag.create(lister_id: isabel.id, designer: "Celine", bag_type: "handbag", color: "back", fabric: "leather", price: 240, image: "https://cdn.shopify.com/s/files/1/0003/3859/1780/products/NanoLuggageBlack_1024x1024.png?v=1532072981")
bag17 = Handbag.create(lister_id: isabel.id, designer: "Balenciaga", bag_type: "cross-body", color: "red", fabric: "leather", price: 180, image: "https://cdn.shopify.com/s/files/1/0087/1805/7551/products/4_dce96783-b316-480e-97e6-d44959e3bd74_800x.png?v=1575949328")


cat_rented = UserHandbag.create(user_id:cat.id, handbag_id: bag8.id)
claudia_rented = UserHandbag.create(user_id:claudia.id, handbag_id: bag1.id)
sabrina_rented = UserHandbag.create(user_id:sabrina.id, handbag_id: bag14.id)
isabel_rented = UserHandbag.create(user_id:isabel.id, handbag_id: bag10.id)





