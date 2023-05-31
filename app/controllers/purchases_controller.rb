class PurchasesController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @purchases = @category.purchases
    @purchases = @purchases.sort { |a, b| b.created_at <=> a.created_at }
    @total = @purchases.map(&:amount).sum
  end

  def new
    @purchase = Purchase.new
  end

  def create
    @category = Category.find(params[:category_id])
    @purchase = @category.purchases.new(purchases_params)
  
    if @purchase.save
      CategoryPurchase.create(category_id: @category.id, purchase_id: @purchase.id)
      redirect_to category_purchases_path(category_id: @category.id), notice: 'Purchase was successfully created.'
    else
      redirect_to new_category_purchase_path(category_id: @category.id), alert: 'Purchase was not created.'
      puts @purchase.errors.full_messages
    end
  end

  private

  def purchases_params
    params.require(:purchase).permit(:name, :amount).merge(author_id: current_user.id)
  end
end
