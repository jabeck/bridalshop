class ShopController < ApplicationController
  def index
    @welcome_message = Message.find(:first, :conditions => ["id = ?", 1])
    @items = Item.find(:all)
    @featured_items = []
    3.times do
      @featured_items << gen_random_item(@items, @featured_items)
    end
    
    
    respond_to do |format|
        format.html 
        format.xml
    end
  end

  def add_to_order
    @order = find_order
    item = Item.find(params[:id])
    respond_to do |format|
      if @order.add_item(item)
        flash[:notice] = "Item added successfully."
        format.html { redirect_to :action => :display_order }
      else
        flash[:notice] = "There was an error adding your item."
        format.html { redirect_to :action => :display_order }
      end
    end
  end

  def remove_from_order
    @order = find_order
    item = Item.find(params[:id])
    @order.remove_item(item)
    redirect_to :action => :display_order
  end

  def view_all
    @items = Item.find(:all)
    respond_to do |format|
      format.html
    end
  end

  def designer_browse
    @vendor = Vendor.find(params[:id])
    @items = @vendor.items.collect
    respond_to do |format|
      format.html
    end
  end
  
  def designer_list
    @vendors = Vendor.find(:all)
  end

  def category_browse
    @category = Category.find(params[:id])
    @items = @category.items.collect
    respond_to do |format|
      format.html
    end
  end

  def display_order
    @order = find_order
    respond_to do |format|
      format.html
    end
  end

  def checkout
    @order = find_order
    respond_to do |format|
      format.html
    end
  end

  def delete_order
    session[:order] = nil
    respond_to do |format|
      format.html { redirect_to :action => :index }
    end
  end

  private
  def find_order
    session[:order] ||= Order.new
  end
  
  def gen_random_item(all_items, featured_items)
    item = all_items[rand(all_items.length)]
    if not featured_items.include?(item)
      item
    else
      gen_random_item(all_items, featured_items)
    end
  end
  
end
