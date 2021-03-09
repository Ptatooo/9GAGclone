class VotesController < ApplicationController
  def create
    post_id = params[:post_id]
    vote = Vote.new
    vote.post_id = params[:post_id]
    vote.acc_id = current_acc.id

existing_vote = Vote.where(acc_id: current_acc.id, post_id: params[:vote][:post_id])
respond_to do |format|
  format.js {
if existing_vote.size > 0
  existing_vote.first.destroy
else

    if vote.save
      @success = true
    else
      @success = false
    end
    @post = Post.find(post_id)
    @total_upvotes = Post.find(post_id).upvotes
    @total_downvotes = Post.find(post_id).downvotes
end

render "votes/create"
}
end
  end
private

def vote_params
  params.require(:vote).permit(:upvote, :post_id)
end
end
