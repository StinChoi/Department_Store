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
    # TODO: create a new store
    # create store in memory
    # TODO render new form with store (to show errors)
    store = Store.new(store_params)
    if (store.save)
      redirect_to stores_path
    else
  end
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
    @store.update(params.require(:store).permit(:name))
    redirect_to stores_path
  end
  
  # (D)
  # delete 'stores/:id'
  def destroy
    # TODO: deleting a specific store
    # store = Store.find(params[:id])
    @store.destroy
    redirect_to stores_path
  end

end