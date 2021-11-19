class TopicsController < ApplicationController
  before_action :set_store
  before_action :set_topic, only:[:show, :update, :edit, :destroy]

  # Showing all items in a store (visit - seed)
  def index
    render component: "Topics", props: { store: @store, topics: @store.topics}
  end

  def new
    render component: "TopicNew", props: { store: @store, topic: @topic }
  end

  def create 
    @store.topics.create(name: params[:topic][:name], body: params[:topic])
    redirect_to [@store,@topic]
  end
  
  def show
    # display a specific store
    render component: "Topic", props: { store: @store, topic: @topic }
  end

  def edit
    # TODO: return form for editing user
    render component: "EditTopic", props: { store: @store, topic: @topic }
  end

  def update
    # TODO updating items
    @topic.update(name: params[:topic][:name])
    redirect_to [@store,@topic]
  end

  def destroy
    @topic.destroy
    redirect_to [@store,@topic]
  end

  private
  
  def set_store
    @store = Store.find(params[:store_id])
  end

  def set_topic
    @topic = @store.topics.find(params[:id])
  end

end
