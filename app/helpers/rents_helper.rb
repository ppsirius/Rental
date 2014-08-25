module RentsHelper

  def client_datas
    lambda { |client| "#{client.name} #{client.surname} #{client.document_no}"}
  end

  def car_datas
    lambda { |car| "#{car.model.brand.brand_name} #{car.state}"}
  end

  def rent_client_datas(rent)
    "#{rent.client.name} #{rent.client.surname} #{rent.client.document_no}"
  end

  def rent_car_datas(rent)
    "#{rent.car.model.brand.brand_name} #{rent.car.model.model_name} #{rent.car.registration_no}"
  end

end
