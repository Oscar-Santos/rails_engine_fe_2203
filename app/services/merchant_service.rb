class MerchantService
  def self.all_merchants_info
    end_point = '/api/v1/merchants'
    response = connection.get(end_point) do |faraday|
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.find_merchant(id)
  end_point = "/api/v1/merchants/#{id}"
    response = connection.get(end_point) do |faraday|
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.merchant_items(merchant_id)
    response = connection.get("/api/v1/merchants/#{merchant_id}/items") do |faraday|
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection
    Faraday.new(url: 'http://localhost:3000')
  end
end
