class MerchantFacade
  def self.merchants_info
    json = MerchantService.all_merchants_info

    json[:data].map do |merchant|
      Merchant.new(merchant)

    end
  end

  def self.find_merchant(id)
    MerchantService.find_merchant(id)
  end

  def self.get_items(merchant_id)
    json = MerchantService.merchant_items(merchant_id)

    json[:data].map do |item|
      Item.new(item)
    end
  end
end
