class StoresController < ApplicationController
# before_action :set_sub, only: [:show, :edit, :update, :destroy]

# (C) - get request '/stores/'
  def index
    # stores = Stores.all
    render component: "Stores", props:{ stores: Stores.all }
  end

  # (R) get request to 'stores/new'
  def new
    # TODO return form to create a new stores
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
    # display a specific sub 
    render component: "Store", props: { store:@store }
  end

  # get stores 'stores/:id/edit'
  def edit
    # TODO: return form for editing user
    render component: "EditStore", props: { store:@store }
  end

  # put/patch '/stores/:id'
  def update
    # TODO updating stores
  end
  # (D)
  # delete 'stores/:id'
  def destroy
    # TODO: deleting a specific store
    # store = Store.find(params[:id])
    @store.destroy
    redirect_to subs_path
  end

end