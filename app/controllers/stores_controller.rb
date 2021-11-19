class StoresController < ApplicationController
before_action :set_store, only:[:show, :edit, :update, :destroy]

# (C) - get request '/stores/'
  def index
    # Should show all department stores / allows you to make new, view, edit and delete stores
    @stores = Store.all
    render component: "Stores", props: { stores: Store.all }
  end

  # (R) get request to 'stores/new'
  def new
    render component: "NewStore"
  end

  # posting "/stores"
  def create
   Store.create(name: params[:store][:name])
    # Returning back to the home page to see new deparment
   redirect_to stores_path
  end



  # (U)
  # get '/stores/id'
  def show
    # display a specific store
    render component: "Store", props: { store: @store }
  end

  # get stores 'stores/:id/edit'
  def edit
    # TODO: return form for editing user
    render component: "EditStore", props: { store: @store }
  end

  # put/patch '/stores/:id'
  def update
    # TODO updating stores
    @store.update(name: params[:store][:name])
    redirect_to store_path
  end
  
  # (D)
  # delete 'stores/:id'
  def destroy
    @store.destroy
    redirect_to stores_path
  end

  private 
  def set_store
    @store = Store.find(params[:id])
  end
  
end