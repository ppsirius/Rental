# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Brand.delete_all
Car.delete_all
Client.delete_all
Model.delete_all
Rent.delete_all

audi_car      = Brand.create!(brand_name: 'Audi')
bmw_car       = Brand.create!(brand_name: 'Bmw')
mercedes_car  = Brand.create!(brand_name: 'Mercedes')


audi      = Model.create!(model_name: 'Quatrro', brand_id: audi_car.id)
bmw       = Model.create!(model_name: 'Fast', brand_id: bmw_car.id)
mercedes  = Model.create!(model_name: 'CKlass', brand_id: mercedes_car.id)


client_1 = Client.create!(name: 'John', surname: 'Doe', age: 23, 
  document_no: 'AGF1234', document_type: 'ID')
client_2 = Client.create!(name: 'Tom', surname: 'Flo', age: 44, 
  document_no: 'AGF9999', document_type: 'ID')
client_3 = Client.create!(name: 'Ben', surname: 'Man', age: 34, 
  document_no: 'ZZZ1234', document_type: 'ID')

car_1 = Car.create!(model_id: audi.id, mileage: 2000, registration_no: "KR1234",
  year_of_manufacture: 2000)
car_2 = Car.create!(model_id: bmw.id, mileage: 23000, registration_no: "WW1234",
 year_of_manufacture: 2012)
car_3 = Car.create!(model_id: mercedes.id, mileage: 23000, registration_no: "WW1234", 
  year_of_manufacture: 2012, state: 'rented')
car_4 = Car.create!(model_id: audi.id, mileage: 12000, registration_no: "SJ1234", 
  year_of_manufacture: 2010, state: 'serviced')

rent_1 = Rent.create!(client_id: client_1.id, car_id: car_1.id)
rent_2 = Rent.create!(client_id: client_1.id, car_id: car_1.id)

