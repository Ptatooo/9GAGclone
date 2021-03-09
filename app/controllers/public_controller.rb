class PublicController < ApplicationController

def index
  @communities = Community.all.limit(5)
  @posts = Post.order(id: :desc).limit(20)
end

 def profile
  @profile = Acc.find_by_username params[:username]
  @posts = @profile.posts
 end
end
