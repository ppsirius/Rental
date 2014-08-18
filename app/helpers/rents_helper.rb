module RentsHelper

  def client_datas
    lambda { |client| "#{client.name} #{client.surname} #{client.document_no}"}
  end

end
