class LikesController < ApplicationController
  before_action :authenticate_user!
  def create
    @tweet = Tweet.find(params[:tweet_id])
    @like = current_user.likes.create(tweet_id: params[:tweet_id])
    render 'likes/create.js.erb'
  end
  def destroy
    @tweet = Tweet.find(params[:tweet_id])
    @like = Like.find_by(tweet_id: params[:tweet_id], user_id: current_user.id)
    @like.destroy
    render 'likes/destroy.js.erb'
  end
end
