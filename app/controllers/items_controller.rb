class ItemsController < ApplicationController
  before_action :set_store
  before_action :set_item, only:[:show, :update, :edit, :destroy]

  # Showing all items in a store (visit - seed)
  def index
    render component: "Items", props: { store: @store, items: @store.items}
  end

  def new
    render component: "ItemNew", props: { store: @store, item: @item }
  end

  def create 
    @store.items.create(name: params[:item][:name], body: params[:item])
    redirect_to [@store,@item]
  end
  
  def show
    # display a specific store
    render component: "Items", props: { store: @store, item: @item }
  end

  def edit
    # TODO: return form for editing user
    render component: "EditItem", props: { store: @store, item: @item }
  end

  def update
    # TODO updating items
    @item.update(name: params[:item][:name])
    redirect_to [@store,@item]
  end

  def destroy
    @item.destroy
    redirect_to [@store,@item]
  end

  private
  
  def set_store
    @store = Store.find(params[:store_id])
  end

  def set_item
    @item = @store.items.find(params[:id])
  end

end
