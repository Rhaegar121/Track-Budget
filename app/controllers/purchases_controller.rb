class PurchasesController < ApplicationController
  def index
    @purchases = []

    # find purchases by category id
    purchase_id = CategoryPurchase.where(category_id: params[:category_id]).pluck(:purchase_id)

    # add found purchases to @purchases
    purchase_id.each do |id|
      @purchases << Purchase.find(id)
    end

    # sort @purchases by created_at
    @purchases = @purchases.sort { |a, b| b.created_at <=> a.created_at }
  end

  def new
  end

  def create
  end
end
