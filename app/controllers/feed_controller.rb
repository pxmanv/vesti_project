class FeedController < ApplicationController
  def feed
    @user_outfits = current_user.outfits.order(:updated_at)
    render 'feed'
  end

end
