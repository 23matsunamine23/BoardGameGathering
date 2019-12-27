class LikesController < ApplicationController
  before_action :authenticate_user!
  def create
    @like = current_user.likes.create(tweet_id: params[:tweet_id])
    redirect_to tweets_path
  end
  def destroy
    @like = Like.find_by(tweet_id: params[:tweet_id], user_id: current_user.id)
    @like.destroy
    redirect_to tweets_path
  end
end
