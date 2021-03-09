class CommunitiesController < ApplicationController
before_action :authenticate_acc!, except: [ :index, :show]
before_action :set_community, only: [ :show]
  def index
    @communities = Community.all
  end

  def show
@posts = @community.posts
@subscriber_count = @community.subscribers.count
@is_subscribed = acc_signed_in? ? Subscription.where(community_id: @community.id, acc_id: current_acc.id).any? : false
@subscription = Subscription.new
  end

  def new
    @community = Community.new
  end

  def create
    @community = Community.new community_values
    @community.acc_id = current_acc.id

    if  @community.save
      redirect_to communities_path
    else
      render :new
    end
  end

private

def set_community
  @community = Community.find(params[:id])
end

def community_values
  params.require(:community).permit(:name, :url,:summary, :rules)
end


end
