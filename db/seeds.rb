# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Brand.create(brand_name: 'Audi')
Brand.create(brand_name: 'Bmw')


Brand.last.models.create(model_name: 'A4')
Brand.first.models.create(model_name: 'M3')


Client.create(name: 'John', surname: 'Doe', age: 23, document_no: 'AGF1234', document_type: 'ID')
Client.create(name: 'Tom', surname: 'Flo', age: 44, document_no: 'AGF9999', document_type: 'ID')
Client.create(name: 'Ben', surname: 'Man', age: 34, document_no: 'ZZZ1234', document_type: 'ID')

Car.create(model_id: 2, mileage: 2000, registration_no: "KR1234", year_of_manufacture: 2000)
Car.create(model_id: 3, mileage: 23000, registration_no: "WW1234", year_of_manufacture: 2012)

Rent.create(client_id: 1, car_id: 2)
Rent.create(client_id: 2, car_id: 1)