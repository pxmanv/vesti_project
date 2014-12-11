class FeedController < ApplicationController
  def feed
    @user_outfits = current_user.outfits.order('created_at DESC')
    render 'feed'
  end

end
