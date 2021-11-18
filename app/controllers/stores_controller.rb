class StoresController < ApplicationController
before_actions :set_sub, only: [:show, :edit, :update, :destroy]

# (C) - get request '/stores/'
  def index
    # stores = stores.all
    # TODO : need to display all stores in list
  end

  # (R) get request to 'stores/new'
  def new
    # TODO return form to create a new stores
  end

  # posting "/stores"
  def create
    # TODO: create a new store
    # create store in memory
    # TODO render new form with store (to show errors)
  end

  # (U)
  # get '/stores/id'
  def show
    # display a specific sub 
  end

  # get stores 'stores/:id/edit'
  def edit
    # TODO: return form for editing user
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
  end


end
