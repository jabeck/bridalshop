class ShopController < ApplicationController
  def index
    @vendors = Vendor.find(:all)
    @categories = Category.find(:all)
  end

  def add_to_order
    @order = find_order
    item = Item.find(params[:id])
    @order.add_item(item)
  end

  def view_all
    @items = Item.find(:all)
  end

  def vendor_browse
    @vendor = Vendor.find(params[:id])
    @items = @vendor.items.collect
  end

  def category_browse
    @category = Category.find(params[:id])
    @items = @category.items.collect
  end

  private
  def find_order
    session[:order] ||= Order.new
  end
end
