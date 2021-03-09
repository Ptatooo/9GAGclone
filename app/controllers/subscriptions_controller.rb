class SubscriptionsController < ApplicationController
 def create
   @subscription = Subscription.new(subscription_paramas)
   @subscription.acc_id = current_acc.id
   @subscription.save


  redirect_to community_path(@subscription.community_id)
 end

 def subscription_paramas
params.require(:subscription).permit(:community_id)
 end
end
