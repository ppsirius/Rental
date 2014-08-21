module RentsHelper

  def client_datas
    lambda { |client| "#{client.name} #{client.surname} #{client.document_no}"}
  end

  def car_datas
    lambda { |car| "#{car.model_id}  "}
  end

end
