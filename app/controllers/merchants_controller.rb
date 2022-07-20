class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.merchants_info
  end

  def show
    @merchant = MerchantFacade.find_merchant(params[:id])
    @items = MerchantFacade.get_items(params[:id])
    
  end
end
